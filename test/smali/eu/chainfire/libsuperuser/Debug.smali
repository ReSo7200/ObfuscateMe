.class public Leu/chainfire/libsuperuser/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/libsuperuser/Debug$OnLogListener;
    }
.end annotation


# static fields
.field public static final LOG_ALL:I = 0xffff

.field public static final LOG_COMMAND:I = 0x2

.field public static final LOG_GENERAL:I = 0x1

.field public static final LOG_NONE:I = 0x0

.field public static final LOG_OUTPUT:I = 0x4

.field public static final LOG_POOL:I = 0x8

.field public static final TAG:Ljava/lang/String; = "libsuperuser"

.field private static debug:Z

.field private static logListener:Leu/chainfire/libsuperuser/Debug$OnLogListener;

.field private static logTypes:I

.field private static sanityChecks:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Leu/chainfire/libsuperuser/Debug;->debug:Z

    .line 76
    const v0, 0xffff

    sput v0, Leu/chainfire/libsuperuser/Debug;->logTypes:I

    .line 79
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/libsuperuser/Debug;->logListener:Leu/chainfire/libsuperuser/Debug$OnLogListener;

    .line 215
    const/4 v0, 0x1

    sput-boolean v0, Leu/chainfire/libsuperuser/Debug;->sanityChecks:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebug()Z
    .locals 1

    .line 57
    sget-boolean v0, Leu/chainfire/libsuperuser/Debug;->debug:Z

    return v0
.end method

.method public static getLogTypeEnabled(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 173
    sget v0, Leu/chainfire/libsuperuser/Debug;->logTypes:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getLogTypeEnabledEffective(I)Z
    .locals 1
    .param p0, "type"    # I

    .line 187
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Leu/chainfire/libsuperuser/Debug;->getLogTypeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getOnLogListener()Leu/chainfire/libsuperuser/Debug$OnLogListener;
    .locals 1

    .line 210
    sget-object v0, Leu/chainfire/libsuperuser/Debug;->logListener:Leu/chainfire/libsuperuser/Debug$OnLogListener;

    return-object v0
.end method

.method public static getSanityChecksEnabled()Z
    .locals 1

    .line 238
    sget-boolean v0, Leu/chainfire/libsuperuser/Debug;->sanityChecks:Z

    return v0
.end method

.method public static getSanityChecksEnabledEffective()Z
    .locals 1

    .line 249
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    const-string v1, "G"

    invoke-static {v0, v1, p0}, Leu/chainfire/libsuperuser/Debug;->logCommon(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static logCommand(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x2

    const-string v1, "C"

    invoke-static {v0, v1, p0}, Leu/chainfire/libsuperuser/Debug;->logCommon(ILjava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method private static logCommon(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # I
    .param p1, "typeIndicator"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 92
    sget-boolean v0, Leu/chainfire/libsuperuser/Debug;->debug:Z

    if-eqz v0, :cond_2

    sget v0, Leu/chainfire/libsuperuser/Debug;->logTypes:I

    and-int/2addr v0, p0

    if-ne v0, p0, :cond_2

    .line 93
    sget-object v0, Leu/chainfire/libsuperuser/Debug;->logListener:Leu/chainfire/libsuperuser/Debug$OnLogListener;

    if-eqz v0, :cond_0

    .line 94
    sget-object v0, Leu/chainfire/libsuperuser/Debug;->logListener:Leu/chainfire/libsuperuser/Debug$OnLogListener;

    invoke-interface {v0, p0, p1, p2}, Leu/chainfire/libsuperuser/Debug$OnLogListener;->onLog(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[libsuperuser]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, " "

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "libsuperuser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_2
    :goto_1
    return-void
.end method

.method public static logOutput(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x4

    const-string v1, "O"

    invoke-static {v0, v1, p0}, Leu/chainfire/libsuperuser/Debug;->logCommon(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static logPool(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;

    .line 140
    const/16 v0, 0x8

    const-string v1, "P"

    invoke-static {v0, v1, p0}, Leu/chainfire/libsuperuser/Debug;->logCommon(ILjava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public static onMainThread()Z
    .locals 2

    .line 258
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 48
    sput-boolean p0, Leu/chainfire/libsuperuser/Debug;->debug:Z

    .line 49
    return-void
.end method

.method public static setLogTypeEnabled(IZ)V
    .locals 2
    .param p0, "type"    # I
    .param p1, "enable"    # Z

    .line 154
    if-eqz p1, :cond_0

    .line 155
    sget v0, Leu/chainfire/libsuperuser/Debug;->logTypes:I

    or-int/2addr v0, p0

    sput v0, Leu/chainfire/libsuperuser/Debug;->logTypes:I

    goto :goto_0

    .line 157
    :cond_0
    sget v0, Leu/chainfire/libsuperuser/Debug;->logTypes:I

    not-int v1, p0

    and-int/2addr v0, v1

    sput v0, Leu/chainfire/libsuperuser/Debug;->logTypes:I

    .line 159
    :goto_0
    return-void
.end method

.method public static setOnLogListener(Leu/chainfire/libsuperuser/Debug$OnLogListener;)V
    .locals 0
    .param p0, "onLogListener"    # Leu/chainfire/libsuperuser/Debug$OnLogListener;

    .line 200
    sput-object p0, Leu/chainfire/libsuperuser/Debug;->logListener:Leu/chainfire/libsuperuser/Debug$OnLogListener;

    .line 201
    return-void
.end method

.method public static setSanityChecksEnabled(Z)V
    .locals 0
    .param p0, "enable"    # Z

    .line 226
    sput-boolean p0, Leu/chainfire/libsuperuser/Debug;->sanityChecks:Z

    .line 227
    return-void
.end method
