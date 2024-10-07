.class public Lcom/coniy/fileprefs/FileSharedPreferences;
.super Ljava/lang/Object;
.source "FileSharedPreferences.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# static fields
.field private static final TAG:Ljava/lang/String; = "FileSharedPreferences"


# instance fields
.field private final mFile:Ljava/io/File;

.field private mFileSize:J

.field private final mFilename:Ljava/lang/String;

.field private mLastModified:J

.field private mLoaded:Z

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "prefFile"    # Ljava/io/File;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mLoaded:Z

    .line 30
    iput-object p1, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mFile:Ljava/io/File;

    .line 31
    iget-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mFilename:Ljava/lang/String;

    .line 32
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->startLoadFromDisk()V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "prefFileName"    # Ljava/lang/String;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mLoaded:Z

    .line 36
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "shared_prefs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mFile:Ljava/io/File;

    .line 37
    iget-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mFilename:Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->startLoadFromDisk()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/coniy/fileprefs/FileSharedPreferences;)V
    .locals 0
    .param p0, "x0"    # Lcom/coniy/fileprefs/FileSharedPreferences;

    .line 20
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->loadFromDiskLocked()V

    return-void
.end method

.method private awaitLoadedLocked()V
    .locals 1

    .line 165
    nop

    :goto_0
    iget-boolean v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mLoaded:Z

    if-nez v0, :cond_0

    .line 167
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_1
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    goto :goto_1

    .line 171
    :cond_0
    return-void
.end method

.method private getFileInputStream(Ljava/lang/String;JJ)Lcom/coniy/fileprefs/FileResult;
    .locals 13
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "previousSize"    # J
    .param p4, "previousTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    move-object v0, p1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 236
    .local v8, "size":J
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v10

    .line 237
    .local v10, "time":J
    cmp-long v2, p2, v8

    if-nez v2, :cond_0

    cmp-long v2, p4, v10

    if-nez v2, :cond_0

    .line 238
    new-instance v2, Lcom/coniy/fileprefs/FileResult;

    invoke-direct {v2, v8, v9, v10, v11}, Lcom/coniy/fileprefs/FileResult;-><init>(JJ)V

    return-object v2

    .line 239
    :cond_0
    new-instance v12, Lcom/coniy/fileprefs/FileResult;

    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x4000

    invoke-direct {v3, v2, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object v2, v12

    move-wide v4, v8

    move-wide v6, v10

    invoke-direct/range {v2 .. v7}, Lcom/coniy/fileprefs/FileResult;-><init>(Ljava/io/InputStream;JJ)V

    return-object v12
.end method

.method private declared-synchronized hasFileChanged()Z
    .locals 6

    monitor-enter p0

    .line 153
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mFilename:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/coniy/fileprefs/FileSharedPreferences;->statFile(Ljava/lang/String;)Lcom/coniy/fileprefs/FileResult;

    move-result-object v1

    .line 154
    .local v1, "result":Lcom/coniy/fileprefs/FileResult;
    iget-wide v2, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mLastModified:J

    iget-wide v4, v1, Lcom/coniy/fileprefs/FileResult;->mtime:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mFileSize:J

    iget-wide v4, v1, Lcom/coniy/fileprefs/FileResult;->size:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .end local p0    # "this":Lcom/coniy/fileprefs/FileSharedPreferences;
    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    .line 152
    .end local v1    # "result":Lcom/coniy/fileprefs/FileResult;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "FileSharedPreferences"

    const-string v3, "hasFileChanged"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    monitor-exit p0

    return v0

    .line 152
    .end local v1    # "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 155
    :catch_1
    move-exception v1

    .line 157
    .local v1, "ignored":Ljava/io/FileNotFoundException;
    monitor-exit p0

    return v0
.end method

.method private loadFromDiskLocked()V
    .locals 10

    .line 190
    const-string v0, "getSharedPreferences"

    const-string v1, "FileSharedPreferences"

    iget-boolean v2, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mLoaded:Z

    if-eqz v2, :cond_0

    .line 191
    return-void

    .line 194
    :cond_0
    const/4 v2, 0x0

    .line 195
    .local v2, "map":Ljava/util/Map;
    const/4 v3, 0x0

    .line 197
    .local v3, "result":Lcom/coniy/fileprefs/FileResult;
    :try_start_0
    iget-object v5, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mFilename:Ljava/lang/String;

    iget-wide v6, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mFileSize:J

    iget-wide v8, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mLastModified:J

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/coniy/fileprefs/FileSharedPreferences;->getFileInputStream(Ljava/lang/String;JJ)Lcom/coniy/fileprefs/FileResult;

    move-result-object v4

    move-object v3, v4

    .line 198
    iget-object v4, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    if-eqz v4, :cond_1

    .line 199
    iget-object v4, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    invoke-static {v4}, Lcom/coniy/fileprefs/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v4

    move-object v2, v4

    .line 200
    iget-object v4, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mMap:Ljava/util/Map;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v0

    .line 212
    :goto_0
    if-eqz v3, :cond_2

    iget-object v0, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 214
    :try_start_1
    iget-object v0, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    :goto_1
    goto :goto_2

    .line 215
    :catch_1
    move-exception v0

    .line 216
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 212
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v0

    goto :goto_4

    .line 209
    :catch_2
    move-exception v4

    .line 210
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 212
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_2

    iget-object v0, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 214
    :try_start_3
    iget-object v0, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 215
    :catch_3
    move-exception v0

    .line 216
    .restart local v0    # "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 207
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_4
    move-exception v0

    .line 212
    if-eqz v3, :cond_2

    iget-object v0, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 214
    :try_start_4
    iget-object v0, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 215
    :catch_5
    move-exception v0

    .line 216
    .restart local v0    # "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 205
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :catch_6
    move-exception v4

    .line 206
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_5
    invoke-static {v1, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 212
    nop

    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v3, :cond_2

    iget-object v0, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    .line 214
    :try_start_6
    iget-object v0, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_1

    .line 215
    :catch_7
    move-exception v0

    .line 216
    .restart local v0    # "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 222
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_2
    :goto_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mLoaded:Z

    .line 223
    if-eqz v2, :cond_3

    .line 224
    iput-object v2, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mMap:Ljava/util/Map;

    .line 225
    iget-wide v0, v3, Lcom/coniy/fileprefs/FileResult;->mtime:J

    iput-wide v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mLastModified:J

    .line 226
    iget-wide v0, v3, Lcom/coniy/fileprefs/FileResult;->size:J

    iput-wide v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mFileSize:J

    goto :goto_3

    .line 228
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mMap:Ljava/util/Map;

    .line 230
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 231
    return-void

    .line 212
    :goto_4
    if-eqz v3, :cond_4

    iget-object v1, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    if-eqz v1, :cond_4

    .line 214
    :try_start_7
    iget-object v1, v3, Lcom/coniy/fileprefs/FileResult;->stream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 218
    goto :goto_5

    .line 217
    :catch_8
    move-exception v1

    goto :goto_5

    .line 215
    :catch_9
    move-exception v0

    .line 216
    .restart local v0    # "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 220
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_4
    :goto_5
    throw v0
.end method

.method public static makeWorldReadable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "prefFileName"    # Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "shared_prefs"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .local v1, "prefsDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .local v2, "prefsFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 46
    const/4 v3, 0x3

    new-array v4, v3, [Ljava/io/File;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const/4 v7, 0x2

    aput-object v2, v4, v7

    move v7, v5

    :goto_0
    if-ge v7, v3, :cond_0

    aget-object v8, v4, v7

    .line 47
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 48
    invoke-virtual {v8, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 46
    .end local v8    # "file":Ljava/io/File;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method private startLoadFromDisk()V
    .locals 2

    .line 175
    monitor-enter p0

    .line 176
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mLoaded:Z

    .line 177
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    new-instance v0, Lcom/coniy/fileprefs/FileSharedPreferences$1;

    const-string v1, "FileSharedPreferences-load"

    invoke-direct {v0, p0, v1}, Lcom/coniy/fileprefs/FileSharedPreferences$1;-><init>(Lcom/coniy/fileprefs/FileSharedPreferences;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Lcom/coniy/fileprefs/FileSharedPreferences$1;->start()V

    .line 186
    return-void

    .line 177
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private statFile(Ljava/lang/String;)Lcom/coniy/fileprefs/FileResult;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 244
    .local v0, "file":Ljava/io/File;
    new-instance v1, Lcom/coniy/fileprefs/FileResult;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/coniy/fileprefs/FileResult;-><init>(JJ)V

    return-object v1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 126
    monitor-enter p0

    .line 127
    :try_start_0
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->awaitLoadedLocked()V

    .line 128
    iget-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read-only implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 56
    monitor-enter p0

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->awaitLoadedLocked()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->awaitLoadedLocked()V

    .line 118
    iget-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 119
    .local v0, "v":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    monitor-exit p0

    return v1

    .line 120
    .end local v0    # "v":Ljava/lang/Boolean;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->awaitLoadedLocked()V

    .line 108
    iget-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 109
    .local v0, "v":Ljava/lang/Float;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    monitor-exit p0

    return v1

    .line 110
    .end local v0    # "v":Ljava/lang/Float;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .line 86
    monitor-enter p0

    .line 87
    :try_start_0
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->awaitLoadedLocked()V

    .line 88
    iget-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 89
    .local v0, "v":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    monitor-exit p0

    return v1

    .line 90
    .end local v0    # "v":Ljava/lang/Integer;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->awaitLoadedLocked()V

    .line 98
    iget-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 99
    .local v0, "v":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    monitor-exit p0

    return-wide v1

    .line 100
    .end local v0    # "v":Ljava/lang/Long;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->awaitLoadedLocked()V

    .line 67
    iget-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "v":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    monitor-exit p0

    return-object v1

    .line 69
    .end local v0    # "v":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    .local p2, "defValues":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    monitor-enter p0

    .line 77
    :try_start_0
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->awaitLoadedLocked()V

    .line 78
    iget-object v0, p0, Lcom/coniy/fileprefs/FileSharedPreferences;->mMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 79
    .local v0, "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    monitor-exit p0

    return-object v1

    .line 80
    .end local v0    # "v":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "onSharedPreferenceChangeListener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "listeners are not supported in this implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized reload()V
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->hasFileChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/coniy/fileprefs/FileSharedPreferences;->startLoadFromDisk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local p0    # "this":Lcom/coniy/fileprefs/FileSharedPreferences;
    :cond_0
    monitor-exit p0

    return-void

    .line 146
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 2
    .param p1, "onSharedPreferenceChangeListener"    # Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 143
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "listeners are not supported in this implementation"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
