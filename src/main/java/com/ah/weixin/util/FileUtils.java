package com.ah.weixin.util;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

/**
 * Created by wangjie on 2017/3/20.
 */
public class FileUtils {

    /**
     * 日志对象
     */
    protected static Logger logger = LoggerFactory.getLogger(FileUtils.class);

    /**
     * 上传文件
     * @param file
     * @param attachFile
     */
    public static  int uploadFile(MultipartFile file, String attachFile,String rootPath) {
        InputStream in = null;
        OutputStream out = null;
        int rtn = 0;

        try {
            //上传操作
            String directoryPath = rootPath;

            File serverDirectory = new File(directoryPath);
            // 创建上传目录
            if (!serverDirectory.exists()) {
                serverDirectory.mkdirs();
            }

            //上传文件名取得
            String filePath;
            if (!directoryPath.endsWith("/")) {
                filePath = directoryPath + "/" + attachFile;
            }else{
                filePath = directoryPath + attachFile;
            }
            File serverFile = new File(filePath);

            //不存在创建文件
            if(!serverFile.exists()){
                serverFile.createNewFile();
            }

            //文件上传
            in =file.getInputStream();
            out = new FileOutputStream(serverFile);
            int byteread = 0;
            byte[] tempbytes = new byte[1024];
            while ((byteread = in.read(tempbytes)) != -1) {
                out.write(tempbytes, 0, byteread);
            }
            rtn = 1;
        }catch (Exception e){
            rtn = 0;
        }finally {
            try {
                in.close();
                out.close();
            } catch(Exception e){
                logger.error(e.getMessage());
            }
        }
        return rtn;
    }

    /**
     * 删除文件
     * @param file
     */
    public static int deleteFile(String file) {
        int rtn = 0;

        try {
            String rootPath = ConfigUtil.getConfig("uploadFileDir");
            String directoryPath = rootPath;

            //上传文件名取得
            String filePath;
            if (!directoryPath.endsWith("/")) {
                filePath = directoryPath + "/" + file;
            } else {
                filePath = directoryPath + file;
            }
            File serverFile = new File(filePath);
            //存在删除文件
            if (serverFile.exists()) {
                serverFile.delete();
            }
            rtn = 1;
        } catch(Exception e){
            logger.error(e.getMessage());
            rtn = 0;
        }
        return rtn;
    }
}
