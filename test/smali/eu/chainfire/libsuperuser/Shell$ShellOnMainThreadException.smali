.class public Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;
.super Ljava/lang/RuntimeException;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShellOnMainThreadException"
.end annotation


# static fields
.field public static final EXCEPTION_COMMAND:Ljava/lang/String; = "Application attempted to run a shell command from the main thread"

.field public static final EXCEPTION_NOT_IDLE:Ljava/lang/String; = "Application attempted to wait for a non-idle shell to close on the main thread"

.field public static final EXCEPTION_TOOLBOX:Ljava/lang/String; = "Application attempted to init the Toolbox class from the main thread"

.field public static final EXCEPTION_WAIT_IDLE:Ljava/lang/String; = "Application attempted to wait for a shell to become idle on the main thread"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 69
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    return-void
.end method
