package com.ah.manager.util;

import com.ah.health.utils.CommonUtils;
import com.ah.manager.pojo.TRole;
import com.ah.manager.pojo.TUser;
import com.ah.manager.service.RoleService;
import com.ah.manager.service.UserService;
import com.google.common.cache.CacheBuilder;
import com.google.common.cache.CacheLoader;
import com.google.common.cache.LoadingCache;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.UnavailableSecurityManagerException;
import org.apache.shiro.session.InvalidSessionException;
import org.apache.shiro.subject.Subject;
import org.springframework.util.StringUtils;

import java.security.Principal;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * Created by wangjie on 2017/3/17.
 */
public class UserUtils {
    private  static  UserService userService = SpringContextHolder.getBean(UserService.class);

    private static RoleService roleService = SpringContextHolder.getBean(RoleService.class);

    static LoadingCache<String, TUser> userCache = CacheBuilder.newBuilder()
            .refreshAfterWrite(1, TimeUnit.MINUTES)
            .build(new CacheLoader<String, TUser>() {
                @Override
                public TUser load(String key) throws Exception {
                    // return userCache.getIfPresent(key);
                    //1分钟刷新一次，从库里获取，此缓存初始进来没有值，1分钟后从库里取一次
                    return userService.findByUserCode(key);
                }
            });

    public static TUser getUserById(String userId){
        UserService userService = SpringContextHolder.getBean(UserService.class);
        return userService.findById(userId);
    }
    /**
     * 获取当前登录者对象
     */
    public static Principal getPrincipal() {
        try {
            Subject subject = SecurityUtils.getSubject();
            Principal principal = (Principal) subject.getPrincipal();
            if (principal != null) {
                return principal;
            }
            // subject.logout();
        } catch (UnavailableSecurityManagerException e) {

        } catch (InvalidSessionException e) {

        }
        return null;
    }
    /**
     * 获取当前用户
     * @return
     */
    public static TUser getCurrentUser(){
        String username = (String) SecurityUtils.getSubject().getPrincipal();
        if(StringUtils.isEmpty(username)){
            return null;
        }
        TUser user =  userCache.getIfPresent(username);
        if(user==null) {
            user = userService.findByUserCode(username);
            userCache.put(username,user);
        }

        user.setRole(roleService.findUserRole(user.getId()));//设置用户角色
        return user;
    }

    /**
     * 查询所有没角色的用户
     * @return
     */
    public static List<TUser> getUsers(){
        return userService.findUsers();
    }

    /**
     * 获取用户对应角色
     * 1 学生 2校医 3心理辅导员 4管理员
     */
    public static int getRole(){
        TRole role = getCurrentUser().getRole();
        if(CommonUtils.STUDENT_ID.equals(role.getId())){
            return CommonUtils.ROLE_STUDENT;
        }else if(CommonUtils.DOCTOR_ID.equals(role.getId())){
            return CommonUtils.ROLE_DOCTOR;
        }else if(CommonUtils.XINLI_DOCTOR_ID.equals(role.getId())){
            return CommonUtils.ROLE_XINLI_DOCTOR;
        }else if(CommonUtils.ADMIN_ID.equals(role.getId())){
            return CommonUtils.ROLE_ADMIN;
        }
        return CommonUtils.ROLE_STUDENT;
    }
}
