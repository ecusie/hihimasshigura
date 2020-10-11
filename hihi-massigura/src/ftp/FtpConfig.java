package ftp;

import java.io.Serializable;

/**
 * <p><strong>FtpConfig</strong>は、FTP定義 Bean です。</p>
 */
public class FtpConfig implements Serializable {
  private static final long serialVersionUID = 1L;
  public String hostName;
  public int port;
  public String userName;
  public String password;
  public boolean binaryTransfer;
  public boolean usePassiveMode;
  public String hostPath;
  public String localPath;
  public String encoding;
}