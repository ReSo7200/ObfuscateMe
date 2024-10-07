.class public final Landroidx/test/services/storage/TestStorage;
.super Ljava/lang/Object;
.source "TestStorage.java"

# interfaces
.implements Landroidx/test/platform/io/PlatformTestStorage;


# static fields
.field private static final PROPERTIES_FILE_NAME:Ljava/lang/String; = "properties.dat"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Landroidx/test/services/storage/TestStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/test/services/storage/TestStorage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/test/services/storage/TestStorage;-><init>(Landroid/content/ContentResolver;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "contentResolver"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    .line 86
    return-void
.end method

.method private static doQuery(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resolver",
            "uri"
        }
    .end annotation

    .line 369
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    nop

    .line 373
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 379
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 382
    return-object v0

    .line 380
    :cond_0
    new-instance v1, Landroidx/test/services/storage/TestStorageException;

    const-string v2, "Failed to resolve query for URI: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getProperties(Landroid/database/Cursor;)Ljava/util/Map;
    .locals 3
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cursor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 386
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 389
    .local v0, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 390
    sget-object v1, Landroidx/test/services/storage/file/PropertyFile$Column;->NAME:Landroidx/test/services/storage/file/PropertyFile$Column;

    .line 391
    invoke-virtual {v1}, Landroidx/test/services/storage/file/PropertyFile$Column;->getPosition()I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroidx/test/services/storage/file/PropertyFile$Column;->VALUE:Landroidx/test/services/storage/file/PropertyFile$Column;

    .line 392
    invoke-virtual {v2}, Landroidx/test/services/storage/file/PropertyFile$Column;->getPosition()I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 390
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 394
    :cond_0
    return-object v0
.end method

.method private static getPropertyFileUri()Landroid/net/Uri;
    .locals 2

    .line 361
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->EXPORT_PROPERTIES:Landroidx/test/services/storage/file/HostedFile$FileHost;

    const-string v1, "properties.dat"

    invoke-static {v0, v1}, Landroidx/test/services/storage/file/HostedFile;->buildUri(Landroidx/test/services/storage/file/HostedFile$FileHost;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static silentlyClose(Ljava/io/InputStream;)V
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 398
    if-eqz p0, :cond_0

    .line 400
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 405
    :cond_0
    :goto_0
    return-void
.end method

.method private static silentlyClose(Ljava/io/OutputStream;)V
    .locals 1
    .param p0, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .line 408
    if-eqz p0, :cond_0

    .line 410
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_0

    .line 411
    :catch_0
    move-exception v0

    .line 415
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addOutputProperties(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "properties"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)V"
        }
    .end annotation

    .line 266
    .local p1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    invoke-virtual {p0}, Landroidx/test/services/storage/TestStorage;->getOutputProperties()Ljava/util/Map;

    move-result-object v0

    .line 271
    .local v0, "allProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 273
    invoke-static {}, Landroidx/test/services/storage/TestStorage;->getPropertyFileUri()Landroid/net/Uri;

    move-result-object v1

    .line 274
    .local v1, "propertyFileUri":Landroid/net/Uri;
    const/4 v2, 0x0

    .line 278
    .local v2, "objectOutputStream":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/BufferedOutputStream;

    iget-object v4, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    .line 280
    invoke-static {v1, v4}, Landroidx/test/services/storage/internal/TestStorageUtil;->getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 281
    .local v3, "outputStream":Ljava/io/OutputStream;
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    .line 282
    invoke-virtual {v2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    invoke-static {v2}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/OutputStream;)V

    .line 289
    nop

    .line 290
    return-void

    .line 288
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 285
    :catch_0
    move-exception v3

    .line 286
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v4, Landroidx/test/services/storage/TestStorageException;

    const-string v5, "I/O error occurred during reading test properties."

    invoke-direct {v4, v5, v3}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "allProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    .end local v1    # "propertyFileUri":Landroid/net/Uri;
    .end local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local p1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    throw v4

    .line 283
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "allProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    .restart local v1    # "propertyFileUri":Landroid/net/Uri;
    .restart local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local p1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    :catch_1
    move-exception v3

    .line 284
    .local v3, "ex":Ljava/io/FileNotFoundException;
    new-instance v4, Landroidx/test/services/storage/TestStorageException;

    const-string v5, "Unable to create file"

    invoke-direct {v4, v5, v3}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "allProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    .end local v1    # "propertyFileUri":Landroid/net/Uri;
    .end local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .end local p1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    .end local v3    # "ex":Ljava/io/FileNotFoundException;
    .restart local v0    # "allProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    .restart local v1    # "propertyFileUri":Landroid/net/Uri;
    .restart local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    .restart local p1    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    :goto_0
    invoke-static {v2}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/OutputStream;)V

    .line 289
    throw v3

    .line 267
    .end local v0    # "allProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    .end local v1    # "propertyFileUri":Landroid/net/Uri;
    .end local v2    # "objectOutputStream":Ljava/io/ObjectOutputStream;
    :cond_1
    :goto_1
    return-void
.end method

.method public getInputArg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "argName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "argName"
        }
    .end annotation

    .line 180
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Landroidx/test/services/storage/file/PropertyFile$Authority;->TEST_ARGS:Landroidx/test/services/storage/file/PropertyFile$Authority;

    invoke-static {v0, p1}, Landroidx/test/services/storage/file/PropertyFile;->buildUri(Landroidx/test/services/storage/file/PropertyFile$Authority;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 183
    .local v0, "testArgUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 185
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0}, Landroidx/test/services/storage/TestStorage;->doQuery(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 186
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_2

    .line 193
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 197
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 198
    sget-object v2, Landroidx/test/services/storage/file/PropertyFile$Column;->VALUE:Landroidx/test/services/storage/file/PropertyFile$Column;

    invoke-virtual {v2}, Landroidx/test/services/storage/file/PropertyFile$Column;->getPosition()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    if-eqz v1, :cond_0

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 198
    :cond_0
    return-object v2

    .line 194
    :cond_1
    :try_start_1
    new-instance v2, Landroidx/test/services/storage/TestStorageException;

    const-string v3, "Query for URI \'%s\' returned more than one result. Weird."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    .line 195
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;)V

    .end local v0    # "testArgUri":Landroid/net/Uri;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local p1    # "argName":Ljava/lang/String;
    throw v2

    .line 187
    .restart local v0    # "testArgUri":Landroid/net/Uri;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "argName":Ljava/lang/String;
    :cond_2
    new-instance v2, Landroidx/test/services/storage/TestStorageException;

    const-string v3, "Query for URI \'%s\' did not return any results. Make sure the argName is actually being passed in as a test argument."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    .line 188
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;)V

    .end local v0    # "testArgUri":Landroid/net/Uri;
    .end local v1    # "cursor":Landroid/database/Cursor;
    .end local p1    # "argName":Ljava/lang/String;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .restart local v0    # "testArgUri":Landroid/net/Uri;
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "argName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_3

    .line 201
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_3
    throw v2
.end method

.method public getInputArgs()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    sget-object v0, Landroidx/test/services/storage/file/PropertyFile$Authority;->TEST_ARGS:Landroidx/test/services/storage/file/PropertyFile$Authority;

    invoke-static {v0}, Landroidx/test/services/storage/file/PropertyFile;->buildUri(Landroidx/test/services/storage/file/PropertyFile$Authority;)Landroid/net/Uri;

    move-result-object v0

    .line 212
    .local v0, "testArgUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 214
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v2, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0}, Landroidx/test/services/storage/TestStorage;->doQuery(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 215
    invoke-static {v1}, Landroidx/test/services/storage/TestStorage;->getProperties(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    if-eqz v1, :cond_0

    .line 218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 215
    :cond_0
    return-object v2

    .line 217
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    .line 218
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_1
    throw v2
.end method

.method public getInputFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathname"
        }
    .end annotation

    .line 104
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->TEST_FILE:Landroidx/test/services/storage/file/HostedFile$FileHost;

    invoke-static {v0, p1}, Landroidx/test/services/storage/file/HostedFile;->buildUri(Landroidx/test/services/storage/file/HostedFile$FileHost;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getOutputFileUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathname"
        }
    .end annotation

    .line 123
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->OUTPUT:Landroidx/test/services/storage/file/HostedFile$FileHost;

    invoke-static {v0, p1}, Landroidx/test/services/storage/file/HostedFile;->buildUri(Landroidx/test/services/storage/file/HostedFile$FileHost;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getOutputProperties()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .line 298
    invoke-static {}, Landroidx/test/services/storage/TestStorage;->getPropertyFileUri()Landroid/net/Uri;

    move-result-object v0

    .line 300
    .local v0, "propertyFileUri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 301
    .local v1, "in":Ljava/io/ObjectInputStream;
    const/4 v2, 0x0

    .line 303
    .local v2, "rawStream":Ljava/io/InputStream;
    :try_start_0
    iget-object v3, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v3}, Landroidx/test/services/storage/internal/TestStorageUtil;->getInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 304
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v1, v3

    .line 306
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 307
    .local v3, "recordedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    if-nez v3, :cond_0

    .line 308
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    invoke-static {v1}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 318
    invoke-static {v2}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 308
    return-object v4

    .line 310
    :cond_0
    nop

    .line 317
    invoke-static {v1}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 318
    invoke-static {v2}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 310
    return-object v3

    .line 317
    .end local v3    # "recordedProperties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/Serializable;>;"
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 314
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 315
    .local v3, "e":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    sget-object v4, Landroidx/test/services/storage/TestStorage;->TAG:Ljava/lang/String;

    const-string v5, "Failed to read recorded stats!"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v1}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 318
    invoke-static {v2}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 319
    goto :goto_2

    .line 312
    :catch_2
    move-exception v3

    .line 313
    .local v3, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v4, Landroidx/test/services/storage/TestStorage;->TAG:Ljava/lang/String;

    const-string v5, "%s: does not exist, we must be the first call."

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 317
    nop

    .end local v3    # "fnfe":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 320
    :goto_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    return-object v3

    .line 317
    :goto_3
    invoke-static {v1}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 318
    invoke-static {v2}, Landroidx/test/services/storage/TestStorage;->silentlyClose(Ljava/io/InputStream;)V

    .line 319
    throw v3
.end method

.method public isTestStorageFilePath(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathname"
        }
    .end annotation

    .line 136
    new-instance v0, Ljava/io/File;

    .line 139
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getInstrumentation()Landroid/app/Instrumentation;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroidx/test/services/storage/file/HostedFile;->getOutputRootDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "googletest/"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 143
    .local v0, "onDevicePathRoot":Ljava/io/File;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public openInputFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 160
    invoke-virtual {p0, p1}, Landroidx/test/services/storage/TestStorage;->getInputFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 161
    .local v0, "dataUri":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Landroidx/test/services/storage/internal/TestStorageUtil;->getInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public openInternalInputFile(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 337
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->INTERNAL_USE_ONLY:Landroidx/test/services/storage/file/HostedFile$FileHost;

    invoke-static {v0, p1}, Landroidx/test/services/storage/file/HostedFile;->buildUri(Landroidx/test/services/storage/file/HostedFile$FileHost;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 339
    .local v0, "outputUri":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Landroidx/test/services/storage/internal/TestStorageUtil;->getInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public openInternalOutputFile(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 355
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    sget-object v0, Landroidx/test/services/storage/file/HostedFile$FileHost;->INTERNAL_USE_ONLY:Landroidx/test/services/storage/file/HostedFile$FileHost;

    invoke-static {v0, p1}, Landroidx/test/services/storage/file/HostedFile;->buildUri(Landroidx/test/services/storage/file/HostedFile$FileHost;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 357
    .local v0, "outputUri":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1}, Landroidx/test/services/storage/internal/TestStorageUtil;->getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method

.method public openOutputFile(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "pathname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pathname"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/test/services/storage/TestStorage;->openOutputFile(Ljava/lang/String;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public openOutputFile(Ljava/lang/String;Z)Ljava/io/OutputStream;
    .locals 2
    .param p1, "pathname"    # Ljava/lang/String;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pathname",
            "append"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 253
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    invoke-virtual {p0, p1}, Landroidx/test/services/storage/TestStorage;->getOutputFileUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 255
    .local v0, "outputUri":Landroid/net/Uri;
    iget-object v1, p0, Landroidx/test/services/storage/TestStorage;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, p2}, Landroidx/test/services/storage/internal/TestStorageUtil;->getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;Z)Ljava/io/OutputStream;

    move-result-object v1

    return-object v1
.end method
