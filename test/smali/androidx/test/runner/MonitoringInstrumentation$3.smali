.class Landroidx/test/runner/MonitoringInstrumentation$3;
.super Ljava/lang/Object;
.source "MonitoringInstrumentation.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/test/runner/MonitoringInstrumentation;->registerUncaughtExceptionHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/runner/MonitoringInstrumentation;


# direct methods
.method constructor <init>(Landroidx/test/runner/MonitoringInstrumentation;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/test/runner/MonitoringInstrumentation;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 307
    iput-object p1, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "t",
            "e"
        }
    .end annotation

    .line 310
    nop

    .line 313
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 312
    const-string v1, "Handling an uncaught exception thrown on the thread %s."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 310
    const-string v1, "MonitoringInstr"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    invoke-virtual {v0, p1, p2}, Landroidx/test/runner/MonitoringInstrumentation;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    .line 316
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    invoke-static {v0}, Landroidx/test/runner/MonitoringInstrumentation;->access$100(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    .line 321
    invoke-static {v0}, Landroidx/test/runner/MonitoringInstrumentation;->access$100(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iget-object v2, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    invoke-static {v2}, Landroidx/test/runner/MonitoringInstrumentation;->access$100(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 319
    const-string v2, "Invoking default uncaught exception handler %s (a %s)"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 317
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation$3;->this$0:Landroidx/test/runner/MonitoringInstrumentation;

    invoke-static {v0}, Landroidx/test/runner/MonitoringInstrumentation;->access$100(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 324
    :cond_0
    const-string v0, "robolectric"

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 325
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    const-string v0, "The main thread has died and the handlers didn\'t care, exiting"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/16 v0, -0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 333
    :cond_1
    return-void
.end method
