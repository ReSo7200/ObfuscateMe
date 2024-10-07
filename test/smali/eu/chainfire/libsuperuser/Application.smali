.class public Leu/chainfire/libsuperuser/Application;
.super Landroid/app/Application;
.source "Application.java"


# static fields
.field private static final mApplicationHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Leu/chainfire/libsuperuser/Application;->mApplicationHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;

    .line 44
    if-nez p0, :cond_0

    return-void

    .line 46
    :cond_0
    instance-of v0, p0, Leu/chainfire/libsuperuser/Application;

    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 50
    :cond_1
    instance-of v0, p0, Leu/chainfire/libsuperuser/Application;

    if-eqz v0, :cond_2

    .line 51
    move-object v0, p0

    .line 52
    .local v0, "c":Landroid/content/Context;
    move-object v1, p1

    .line 54
    .local v1, "m":Ljava/lang/String;
    move-object v2, p0

    check-cast v2, Leu/chainfire/libsuperuser/Application;

    new-instance v3, Leu/chainfire/libsuperuser/Application$1;

    invoke-direct {v3, v0, v1}, Leu/chainfire/libsuperuser/Application$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Leu/chainfire/libsuperuser/Application;->runInApplicationThread(Ljava/lang/Runnable;)V

    .line 61
    .end local v0    # "c":Landroid/content/Context;
    .end local v1    # "m":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 77
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 82
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 83
    :catch_0
    move-exception v0

    .line 86
    :goto_0
    return-void
.end method

.method public runInApplicationThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 72
    sget-object v0, Leu/chainfire/libsuperuser/Application;->mApplicationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 73
    return-void
.end method
