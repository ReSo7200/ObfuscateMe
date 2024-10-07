.class public Lorg/junit/rules/TemporaryFolder;
.super Lorg/junit/rules/ExternalResource;
.source "TemporaryFolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/rules/TemporaryFolder$Builder;
    }
.end annotation


# static fields
.field private static final TEMP_DIR_ATTEMPTS:I = 0x2710

.field private static final TMP_PREFIX:Ljava/lang/String; = "junit"


# instance fields
.field private final assureDeletion:Z

.field private folder:Ljava/io/File;

.field private final parentFolder:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/junit/rules/TemporaryFolder;-><init>(Ljava/io/File;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "parentFolder"    # Ljava/io/File;

    .line 68
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/junit/rules/TemporaryFolder;->parentFolder:Ljava/io/File;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/junit/rules/TemporaryFolder;->assureDeletion:Z

    .line 71
    return-void
.end method

.method protected constructor <init>(Lorg/junit/rules/TemporaryFolder$Builder;)V
    .locals 1
    .param p1, "builder"    # Lorg/junit/rules/TemporaryFolder$Builder;

    .line 77
    invoke-direct {p0}, Lorg/junit/rules/ExternalResource;-><init>()V

    .line 78
    invoke-static {p1}, Lorg/junit/rules/TemporaryFolder$Builder;->access$000(Lorg/junit/rules/TemporaryFolder$Builder;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/rules/TemporaryFolder;->parentFolder:Ljava/io/File;

    .line 79
    invoke-static {p1}, Lorg/junit/rules/TemporaryFolder$Builder;->access$100(Lorg/junit/rules/TemporaryFolder$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/junit/rules/TemporaryFolder;->assureDeletion:Z

    .line 80
    return-void
.end method

.method public static builder()Lorg/junit/rules/TemporaryFolder$Builder;
    .locals 1

    .line 88
    new-instance v0, Lorg/junit/rules/TemporaryFolder$Builder;

    invoke-direct {v0}, Lorg/junit/rules/TemporaryFolder$Builder;-><init>()V

    return-object v0
.end method

.method private static createTemporaryFolderIn(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p0, "parentFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    const-string v0, "Failed to create temporary folder in "

    :try_start_0
    invoke-static {p0}, Lorg/junit/rules/TemporaryFolder;->createTemporaryFolderWithNioApi(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 243
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/io/IOException;

    if-nez v3, :cond_1

    .line 246
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_0

    .line 247
    move-object v0, v2

    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 249
    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 250
    .local v0, "exception":Ljava/io/IOException;
    invoke-virtual {v0, v2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 251
    throw v0

    .line 244
    .end local v0    # "exception":Ljava/io/IOException;
    :cond_1
    move-object v0, v2

    check-cast v0, Ljava/io/IOException;

    throw v0

    .line 238
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 240
    .local v0, "ignore":Ljava/lang/ClassNotFoundException;
    invoke-static {p0}, Lorg/junit/rules/TemporaryFolder;->createTemporaryFolderWithFileApi(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method private static createTemporaryFolderWithFileApi(Ljava/io/File;)Ljava/io/File;
    .locals 7
    .param p0, "parentFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, "createdFolder":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x2710

    if-ge v1, v2, :cond_1

    .line 277
    const-string v2, ".tmp"

    .line 278
    .local v2, "suffix":Ljava/lang/String;
    const-string v3, "junit"

    invoke-static {v3, v2, p0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v3

    .line 279
    .local v3, "tmpFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, "tmpName":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 282
    .local v5, "folderName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v6

    .line 283
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 284
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 285
    return-object v0

    .line 287
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 275
    .end local v2    # "suffix":Ljava/lang/String;
    .end local v3    # "tmpFile":Ljava/io/File;
    .end local v4    # "tmpName":Ljava/lang/String;
    .end local v5    # "folderName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create temporary directory in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". Tried "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Last attempted to create: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createTemporaryFolderWithNioApi(Ljava/io/File;)Ljava/io/File;
    .locals 11
    .param p0, "parentFolder"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 258
    const-string v0, "java.nio.file.Files"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 259
    .local v0, "filesClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "java.nio.file.attribute.FileAttribute"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    .line 260
    .local v1, "fileAttributeArray":Ljava/lang/Object;
    const-string v3, "java.nio.file.Path"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 262
    .local v3, "pathClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "junit"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x2

    const-string v8, "createTempDirectory"

    if-eqz p0, :cond_0

    .line 263
    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Class;

    aput-object v3, v9, v2

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v9, v7

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 264
    .local v6, "createTempDirectoryMethod":Ljava/lang/reflect/Method;
    const-class v7, Ljava/io/File;

    const-string/jumbo v8, "toPath"

    new-array v9, v2, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v7, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 265
    .local v7, "parentPath":Ljava/lang/Object;
    filled-new-array {v7, v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 266
    .end local v6    # "createTempDirectoryMethod":Ljava/lang/reflect/Method;
    .end local v7    # "parentPath":Ljava/lang/Object;
    .local v4, "tempDir":Ljava/lang/Object;
    goto :goto_0

    .line 267
    .end local v4    # "tempDir":Ljava/lang/Object;
    :cond_0
    new-array v7, v7, [Ljava/lang/Class;

    const-class v9, Ljava/lang/String;

    aput-object v9, v7, v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-virtual {v0, v8, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 268
    .restart local v6    # "createTempDirectoryMethod":Ljava/lang/reflect/Method;
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v6, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 270
    .end local v6    # "createTempDirectoryMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "tempDir":Ljava/lang/Object;
    :goto_0
    const-string/jumbo v5, "toFile"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    return-object v2
.end method

.method private recursiveDelete(Ljava/io/File;)Z
    .locals 6
    .param p1, "file"    # Ljava/io/File;

    .line 338
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    const/4 v0, 0x1

    return v0

    .line 341
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 342
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_2

    .line 343
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 344
    .local v4, "each":Ljava/io/File;
    invoke-direct {p0, v4}, Lorg/junit/rules/TemporaryFolder;->recursiveDelete(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 345
    const/4 v5, 0x0

    return v5

    .line 343
    .end local v4    # "each":Ljava/io/File;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method private tryDelete()Z
    .locals 1

    .line 328
    iget-object v0, p0, Lorg/junit/rules/TemporaryFolder;->folder:Ljava/io/File;

    if-nez v0, :cond_0

    .line 329
    const/4 v0, 0x1

    return v0

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/junit/rules/TemporaryFolder;->folder:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/junit/rules/TemporaryFolder;->recursiveDelete(Ljava/io/File;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected after()V
    .locals 0

    .line 141
    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->delete()V

    .line 142
    return-void
.end method

.method protected before()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->create()V

    .line 137
    return-void
.end method

.method public create()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/junit/rules/TemporaryFolder;->parentFolder:Ljava/io/File;

    invoke-static {v0}, Lorg/junit/rules/TemporaryFolder;->createTemporaryFolderIn(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/rules/TemporaryFolder;->folder:Ljava/io/File;

    .line 151
    return-void
.end method

.method public delete()V
    .locals 2

    .line 313
    invoke-direct {p0}, Lorg/junit/rules/TemporaryFolder;->tryDelete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    iget-boolean v0, p0, Lorg/junit/rules/TemporaryFolder;->assureDeletion:Z

    if-eqz v0, :cond_0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to clean up temporary folder "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/rules/TemporaryFolder;->folder:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 318
    :cond_0
    return-void
.end method

.method public getRoot()Ljava/io/File;
    .locals 2

    .line 298
    iget-object v0, p0, Lorg/junit/rules/TemporaryFolder;->folder:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lorg/junit/rules/TemporaryFolder;->folder:Ljava/io/File;

    return-object v0

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "the temporary folder has not yet been created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newFile()Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->getRoot()Ljava/io/File;

    move-result-object v1

    const-string v2, "junit"

    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public newFile(Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->getRoot()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    return-object v0

    .line 159
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a file with the name \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' already exists in the test folder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public newFolder()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->getRoot()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/rules/TemporaryFolder;->createTemporaryFolderIn(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public newFolder(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/junit/rules/TemporaryFolder;->newFolder([Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public varargs newFolder([Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .param p1, "paths"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    array-length v0, p1

    if-eqz v0, :cond_6

    .line 196
    invoke-virtual {p0}, Lorg/junit/rules/TemporaryFolder;->getRoot()Ljava/io/File;

    move-result-object v0

    .line 197
    .local v0, "root":Ljava/io/File;
    move-object v1, p1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 198
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isAbsolute()Z

    move-result v5

    if-nez v5, :cond_0

    .line 197
    .end local v4    # "path":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .restart local v4    # "path":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "folder path \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' is not a relative path"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 203
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    .end local v4    # "path":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .line 204
    .local v1, "relativePath":Ljava/io/File;
    move-object v2, v0

    .line 205
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x1

    .line 206
    .local v3, "lastMkdirsCallSuccessful":Z
    move-object v4, p1

    .local v4, "arr$":[Ljava/lang/String;
    array-length v5, v4

    .local v5, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_1
    if-ge v6, v5, :cond_4

    aget-object v7, v4, v6

    .line 207
    .local v7, "path":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v8

    .line 208
    new-instance v8, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v8

    .line 210
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v3

    .line 211
    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    .line 212
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 213
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "a file with the path \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\' exists"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 216
    :cond_2
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "could not create a folder with the path \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 206
    .end local v7    # "path":Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 221
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "i$":I
    :cond_4
    if-eqz v3, :cond_5

    .line 225
    return-object v2

    .line 222
    :cond_5
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "a folder with the path \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 189
    .end local v0    # "root":Ljava/io/File;
    .end local v1    # "relativePath":Ljava/io/File;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "lastMkdirsCallSuccessful":Z
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must pass at least one path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
