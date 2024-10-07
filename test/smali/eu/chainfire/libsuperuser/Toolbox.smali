.class public Leu/chainfire/libsuperuser/Toolbox;
.super Ljava/lang/Object;
.source "Toolbox.java"


# static fields
.field private static final TOYBOX_SDK:I = 0x17

.field private static final synchronizer:Ljava/lang/Object;

.field private static volatile toybox:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Leu/chainfire/libsuperuser/Toolbox;->synchronizer:Ljava/lang/Object;

    .line 45
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/libsuperuser/Toolbox;->toybox:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs command(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 101
    nop

    .line 105
    sget-object v0, Leu/chainfire/libsuperuser/Toolbox;->toybox:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Leu/chainfire/libsuperuser/Toolbox;->init()V

    .line 107
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 109
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 110
    .local v0, "p":I
    if-ltz v0, :cond_1

    .line 111
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "applet":Ljava/lang/String;
    goto :goto_0

    .line 113
    .end local v1    # "applet":Ljava/lang/String;
    :cond_1
    move-object v1, p0

    .line 116
    .restart local v1    # "applet":Ljava/lang/String;
    :goto_0
    sget-object v2, Leu/chainfire/libsuperuser/Toolbox;->toybox:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 117
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toybox "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 119
    :cond_2
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "toolbox "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static init()V
    .locals 6

    .line 55
    sget-object v0, Leu/chainfire/libsuperuser/Toolbox;->toybox:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-void

    .line 58
    :cond_0
    nop

    .line 61
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->onMainThread()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    const-string v0, "Application attempted to init the Toolbox class from the main thread"

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 63
    new-instance v0, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;

    const-string v1, "Application attempted to init the Toolbox class from the main thread"

    invoke-direct {v0, v1}, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_2
    :goto_0
    sget-object v0, Leu/chainfire/libsuperuser/Toolbox;->synchronizer:Ljava/lang/Object;

    monitor-enter v0

    .line 68
    :try_start_0
    const-string v1, ""

    sput-object v1, Leu/chainfire/libsuperuser/Toolbox;->toybox:Ljava/lang/String;

    .line 70
    const-string/jumbo v1, "toybox"

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$SH;->run(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 71
    .local v1, "output":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 72
    const-string v2, " "

    sput-object v2, Leu/chainfire/libsuperuser/Toolbox;->toybox:Ljava/lang/String;

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    .local v3, "line":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Leu/chainfire/libsuperuser/Toolbox;->toybox:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Leu/chainfire/libsuperuser/Toolbox;->toybox:Ljava/lang/String;

    .line 75
    .end local v3    # "line":Ljava/lang/String;
    goto :goto_1

    .line 77
    .end local v1    # "output":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    monitor-exit v0

    .line 79
    return-void

    .line 77
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
