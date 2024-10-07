.class public Landroidx/test/internal/platform/util/InstrumentationParameterUtil;
.super Ljava/lang/Object;
.source "InstrumentationParameterUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimeoutMillis(Ljava/lang/String;J)J
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "defaultValue"
        }
    .end annotation

    .line 24
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "default timeout value cannot be zero"

    invoke-static {v2, v3}, Landroidx/test/internal/util/Checks;->checkArgument(ZLjava/lang/Object;)V

    .line 26
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 27
    .local v2, "value":J
    cmp-long v4, v2, v0

    if-nez v4, :cond_1

    .line 28
    move-wide v2, p1

    .line 31
    :cond_1
    cmp-long v0, v2, v0

    if-gez v0, :cond_2

    .line 32
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 34
    :cond_2
    return-wide v2
.end method
