.class Landroidx/test/core/app/ActivityScenario$1;
.super Ljava/lang/Object;
.source "ActivityScenario.java"

# interfaces
.implements Landroidx/test/runner/lifecycle/ActivityLifecycleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/core/app/ActivityScenario;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/test/core/app/ActivityScenario;


# direct methods
.method constructor <init>(Landroidx/test/core/app/ActivityScenario;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/test/core/app/ActivityScenario;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 472
    .local p0, "this":Landroidx/test/core/app/ActivityScenario$1;, "Landroidx/test/core/app/ActivityScenario$1;"
    iput-object p1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityLifecycleChanged(Landroid/app/Activity;Landroidx/test/runner/lifecycle/Stage;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "stage"    # Landroidx/test/runner/lifecycle/Stage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "stage"
        }
    .end annotation

    .line 475
    .local p0, "this":Landroidx/test/core/app/ActivityScenario$1;, "Landroidx/test/core/app/ActivityScenario$1;"
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$000(Landroidx/test/core/app/ActivityScenario;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/test/core/app/ActivityScenario;->access$100(Landroid/content/Intent;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 477
    invoke-static {}, Landroidx/test/core/app/ActivityScenario;->access$200()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 482
    invoke-static {v1}, Landroidx/test/core/app/ActivityScenario;->access$000(Landroidx/test/core/app/ActivityScenario;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object v1

    .line 478
    const-string v2, "Activity lifecycle changed event received but ignored because the intent does not match. startActivityIntent=%s, activity.getIntent()=%s, activity=%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    return-void

    .line 485
    :cond_0
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 487
    :try_start_0
    sget-object v0, Landroidx/test/core/app/ActivityScenario$2;->$SwitchMap$androidx$test$runner$lifecycle$Stage:[I

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v1}, Landroidx/test/core/app/ActivityScenario;->access$400(Landroidx/test/core/app/ActivityScenario;)Landroidx/test/runner/lifecycle/Stage;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/test/runner/lifecycle/Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 511
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    goto :goto_0

    .line 493
    :pswitch_0
    sget-object v0, Landroidx/test/runner/lifecycle/Stage;->CREATED:Landroidx/test/runner/lifecycle/Stage;

    if-eq p2, v0, :cond_1

    .line 495
    invoke-static {}, Landroidx/test/core/app/ActivityScenario;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity lifecycle changed event received but ignored because the reported transition was not ON_CREATE while the last known transition was %s"

    iget-object v2, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 500
    invoke-static {v2}, Landroidx/test/core/app/ActivityScenario;->access$400(Landroidx/test/core/app/ActivityScenario;)Landroidx/test/runner/lifecycle/Stage;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 496
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 501
    return-void

    .line 511
    :goto_0
    :try_start_1
    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$500(Landroidx/test/core/app/ActivityScenario;)Landroid/app/Activity;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 513
    invoke-static {}, Landroidx/test/core/app/ActivityScenario;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity lifecycle changed event received but ignored because the activity instance does not match. currentActivity=%s, receivedActivity=%s"

    iget-object v2, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 518
    invoke-static {v2}, Landroidx/test/core/app/ActivityScenario;->access$500(Landroidx/test/core/app/ActivityScenario;)Landroid/app/Activity;

    move-result-object v2

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    .line 514
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 512
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 538
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 519
    return-void

    .line 527
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v0, p2}, Landroidx/test/core/app/ActivityScenario;->access$402(Landroidx/test/core/app/ActivityScenario;Landroidx/test/runner/lifecycle/Stage;)Landroidx/test/runner/lifecycle/Stage;

    .line 528
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->DESTROYED:Landroidx/test/runner/lifecycle/Stage;

    if-eq p2, v1, :cond_2

    move-object v1, p1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, v1}, Landroidx/test/core/app/ActivityScenario;->access$502(Landroidx/test/core/app/ActivityScenario;Landroid/app/Activity;)Landroid/app/Activity;

    .line 531
    invoke-static {}, Landroidx/test/core/app/ActivityScenario;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update currentActivityStage to %s, currentActivity=%s"

    iget-object v2, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    .line 534
    invoke-static {v2}, Landroidx/test/core/app/ActivityScenario;->access$400(Landroidx/test/core/app/ActivityScenario;)Landroidx/test/runner/lifecycle/Stage;

    move-result-object v2

    iget-object v3, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v3}, Landroidx/test/core/app/ActivityScenario;->access$500(Landroidx/test/core/app/ActivityScenario;)Landroid/app/Activity;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 532
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 530
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$600(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 538
    iget-object v0, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v0}, Landroidx/test/core/app/ActivityScenario;->access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 539
    nop

    .line 540
    return-void

    .line 538
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/test/core/app/ActivityScenario$1;->this$0:Landroidx/test/core/app/ActivityScenario;

    invoke-static {v1}, Landroidx/test/core/app/ActivityScenario;->access$300(Landroidx/test/core/app/ActivityScenario;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 539
    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
