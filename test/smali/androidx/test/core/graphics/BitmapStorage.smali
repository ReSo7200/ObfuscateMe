.class public final Landroidx/test/core/graphics/BitmapStorage;
.super Ljava/lang/Object;
.source "BitmapStorageExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u001a\u001c\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "writeToTestStorage",
        "",
        "Landroid/graphics/Bitmap;",
        "testStorage",
        "Landroidx/test/platform/io/PlatformTestStorage;",
        "name",
        "",
        "core_java_androidx_test_core-core_internal_kt"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final writeToTestStorage(Landroid/graphics/Bitmap;Landroidx/test/platform/io/PlatformTestStorage;Ljava/lang/String;)V
    .locals 5
    .param p0, "$this$writeToTestStorage"    # Landroid/graphics/Bitmap;
    .param p1, "testStorage"    # Landroidx/test/platform/io/PlatformTestStorage;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lkotlin/Deprecated;
        message = "use  PlatformTestStorageRegistry.setInstance in the rare cases where you want to override the PlatformTestStorage to use"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "writeToTestStorage()"
            imports = {}
        .end subannotation
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "testStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/test/platform/io/PlatformTestStorage;->openOutputFile(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/OutputStream;

    .local v1, "it":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-use-BitmapStorage$writeToTestStorage$1":I
    nop

    .line 51
    nop

    .line 52
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 54
    nop

    .line 55
    nop

    .line 51
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    nop

    .end local v1    # "it":Ljava/io/OutputStream;
    .end local v2    # "$i$a$-use-BitmapStorage$writeToTestStorage$1":I
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 61
    return-void

    .line 58
    .restart local v1    # "it":Ljava/io/OutputStream;
    .restart local v2    # "$i$a$-use-BitmapStorage$writeToTestStorage$1":I
    :cond_0
    :try_start_1
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Failed to compress bitmap"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "$this$writeToTestStorage":Landroid/graphics/Bitmap;
    .end local p1    # "testStorage":Landroidx/test/platform/io/PlatformTestStorage;
    .end local p2    # "name":Ljava/lang/String;
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    .end local v1    # "it":Ljava/io/OutputStream;
    .end local v2    # "$i$a$-use-BitmapStorage$writeToTestStorage$1":I
    .restart local p0    # "$this$writeToTestStorage":Landroid/graphics/Bitmap;
    .restart local p1    # "testStorage":Landroidx/test/platform/io/PlatformTestStorage;
    .restart local p2    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .end local p0    # "$this$writeToTestStorage":Landroid/graphics/Bitmap;
    .end local p1    # "testStorage":Landroidx/test/platform/io/PlatformTestStorage;
    .end local p2    # "name":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .restart local p0    # "$this$writeToTestStorage":Landroid/graphics/Bitmap;
    .restart local p1    # "testStorage":Landroidx/test/platform/io/PlatformTestStorage;
    .restart local p2    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static final writeToTestStorage(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2
    .param p0, "$this$writeToTestStorage"    # Landroid/graphics/Bitmap;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Landroidx/test/platform/io/PlatformTestStorageRegistry;->getInstance()Landroidx/test/platform/io/PlatformTestStorage;

    move-result-object v0

    const-string v1, "getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0, p1}, Landroidx/test/core/graphics/BitmapStorage;->writeToTestStorage(Landroid/graphics/Bitmap;Landroidx/test/platform/io/PlatformTestStorage;Ljava/lang/String;)V

    .line 36
    return-void
.end method
