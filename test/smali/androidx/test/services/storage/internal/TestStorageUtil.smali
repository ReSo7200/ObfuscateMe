.class public final Landroidx/test/services/storage/internal/TestStorageUtil;
.super Ljava/lang/Object;
.source "TestStorageUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/InputStream;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "contentResolver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 47
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    .line 51
    .local v0, "providerClient":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {p1, p0}, Landroidx/test/services/storage/internal/TestStorageUtil;->makeContentProviderClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    move-object v0, v1

    .line 53
    const-string v1, "r"

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 55
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v3, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 55
    :cond_0
    return-object v2

    .line 59
    .end local v1    # "pfd":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Landroidx/test/services/storage/TestStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to access content provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "providerClient":Landroid/content/ContentProviderClient;
    .end local p0    # "uri":Landroid/net/Uri;
    .end local p1    # "contentResolver":Landroid/content/ContentResolver;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "providerClient":Landroid/content/ContentProviderClient;
    .restart local p0    # "uri":Landroid/net/Uri;
    .restart local p1    # "contentResolver":Landroid/content/ContentResolver;
    :goto_0
    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 63
    :cond_1
    throw v1
.end method

.method public static getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/io/OutputStream;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uri",
            "contentResolver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/test/services/storage/internal/TestStorageUtil;->getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;Z)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public static getOutputStream(Landroid/net/Uri;Landroid/content/ContentResolver;Z)Ljava/io/OutputStream;
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "append"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uri",
            "contentResolver",
            "append"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 91
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const/4 v0, 0x0

    .line 95
    .local v0, "providerClient":Landroid/content/ContentProviderClient;
    :try_start_0
    invoke-static {p1, p0}, Landroidx/test/services/storage/internal/TestStorageUtil;->makeContentProviderClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    move-object v0, v1

    .line 97
    if-eqz p2, :cond_0

    const-string/jumbo v1, "wa"

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "wt"

    .line 98
    .local v1, "mode":Ljava/lang/String;
    :goto_0
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-virtual {v0, p0, v1}, Landroid/content/ContentProviderClient;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 98
    :cond_1
    return-object v2

    .line 102
    .end local v1    # "mode":Ljava/lang/String;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 99
    :catch_0
    move-exception v1

    .line 100
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_1
    new-instance v2, Landroidx/test/services/storage/TestStorageException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to access content provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "providerClient":Landroid/content/ContentProviderClient;
    .end local p0    # "uri":Landroid/net/Uri;
    .end local p1    # "contentResolver":Landroid/content/ContentResolver;
    .end local p2    # "append":Z
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    .end local v1    # "re":Landroid/os/RemoteException;
    .restart local v0    # "providerClient":Landroid/content/ContentProviderClient;
    .restart local p0    # "uri":Landroid/net/Uri;
    .restart local p1    # "contentResolver":Landroid/content/ContentResolver;
    .restart local p2    # "append":Z
    :goto_1
    if-eqz v0, :cond_2

    .line 104
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    .line 106
    :cond_2
    throw v1
.end method

.method private static makeContentProviderClient(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    .locals 4
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

    .line 111
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    .line 114
    .local v0, "providerClient":Landroid/content/ContentProviderClient;
    if-eqz v0, :cond_0

    .line 120
    return-object v0

    .line 115
    :cond_0
    new-instance v1, Landroidx/test/services/storage/TestStorageException;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 116
    const-string v3, "No content provider registered for: %s. Are all test services apks installed?"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/services/storage/TestStorageException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
