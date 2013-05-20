package org.sic.contract.action;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;

public class FileUploadAction {
	private File file; //上传的文件
    private String fileName; //文件名称
    private String fileType; //文件类型

    public String execute() throws Exception {
        String realpath = ServletActionContext.getServletContext().getRealPath("/files");
        System.out.println("realpath: "+realpath);
        if (file != null) {
            File savefile = new File(new File(realpath), fileName);
            if (!savefile.getParentFile().exists())
                savefile.getParentFile().mkdirs();
            FileUtils.copyFile(file, savefile);
            ActionContext.getContext().put("message", "文件上传成功");
        }
        return "success";
    }

    public File getImage() {
        return file;
    }

    public void setImage(File file) {
        this.file = file;
    }

    public String getImageFileName() {
        return fileName;
    }

    public void setImageFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getImageContentType() {
        return fileType;
    }

    public void setImageContentType(String fileType) {
        this.fileType = fileType;
    }
}
