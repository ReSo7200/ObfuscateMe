.class public Leu/chainfire/libsuperuser/Shell$Threaded;
.super Leu/chainfire/libsuperuser/Shell$Interactive;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Threaded"
.end annotation


# static fields
.field private static threadCounter:I


# instance fields
.field private volatile closeEvenIfPooled:Z

.field private final handlerThread:Landroid/os/HandlerThread;

.field private final onCloseCalledSync:Ljava/lang/Object;

.field private volatile onClosedCalled:Z

.field private volatile onPoolRemoveCalled:Z

.field private final onPoolRemoveCalledSync:Ljava/lang/Object;

.field private final pooled:Z

.field private volatile reserved:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2694
    const/4 v0, 0x0

    sput v0, Leu/chainfire/libsuperuser/Shell$Threaded;->threadCounter:I

    return-void
.end method

.method protected constructor <init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)V
    .locals 3
    .param p1, "builder"    # Leu/chainfire/libsuperuser/Shell$Builder;
    .param p2, "onShellOpenResultListener"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;
    .param p3, "pooled"    # Z

    .line 2732
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$Threaded;->createHandlerThread()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {p1, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->setHandler(Landroid/os/Handler;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    .line 2733
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->setDetectOpen(Z)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    .line 2734
    invoke-virtual {v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->setShellDiesOnSTDOUTERRClose(Z)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    .line 2732
    invoke-direct {p0, v0, p2}, Leu/chainfire/libsuperuser/Shell$Interactive;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V

    .line 2706
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onCloseCalledSync:Ljava/lang/Object;

    .line 2707
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onClosedCalled:Z

    .line 2708
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalledSync:Ljava/lang/Object;

    .line 2709
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    .line 2710
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->reserved:Z

    .line 2711
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->closeEvenIfPooled:Z

    .line 2739
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    check-cast v0, Landroid/os/HandlerThread;

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handlerThread:Landroid/os/HandlerThread;

    .line 2742
    iput-boolean p3, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    .line 2743
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->protect()V

    .line 2744
    :cond_0
    return-void
.end method

.method static synthetic access$4800(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 2693
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->collect()V

    return-void
.end method

.method static synthetic access$4900(Leu/chainfire/libsuperuser/Shell$Threaded;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 2693
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$5100(Leu/chainfire/libsuperuser/Shell$Threaded;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 2693
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->isReserved()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Threaded;
    .param p1, "x1"    # Z

    .line 2693
    invoke-direct {p0, p1}, Leu/chainfire/libsuperuser/Shell$Threaded;->closeWhenIdle(Z)V

    return-void
.end method

.method static synthetic access$5300(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Threaded;
    .param p1, "x1"    # Z

    .line 2693
    invoke-direct {p0, p1}, Leu/chainfire/libsuperuser/Shell$Threaded;->setReserved(Z)V

    return-void
.end method

.method private closeWhenIdle(Z)V
    .locals 3
    .param p1, "fromPool"    # Z

    .line 2825
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->protect()V

    .line 2827
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    if-eqz v0, :cond_1

    .line 2828
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalledSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2829
    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 2830
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    .line 2831
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->access$4700(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    .line 2833
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2834
    if-eqz p1, :cond_1

    .line 2835
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->closeEvenIfPooled:Z

    goto :goto_0

    .line 2833
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2838
    :cond_1
    :goto_0
    invoke-super {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeWhenIdle()V

    .line 2839
    return-void
.end method

.method private collect()V
    .locals 0

    .line 2761
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Garbage;->collect(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    .line 2762
    return-void
.end method

.method private static createHandlerThread()Landroid/os/Handler;
    .locals 3

    .line 2716
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shell.Threaded#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Leu/chainfire/libsuperuser/Shell$Threaded;->incThreadCounter()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 2717
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 2718
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v1
.end method

.method private static incThreadCounter()I
    .locals 3

    .line 2696
    const-class v0, Leu/chainfire/libsuperuser/Shell$Threaded;

    monitor-enter v0

    .line 2697
    :try_start_0
    sget v1, Leu/chainfire/libsuperuser/Shell$Threaded;->threadCounter:I

    .line 2698
    .local v1, "ret":I
    sget v2, Leu/chainfire/libsuperuser/Shell$Threaded;->threadCounter:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Leu/chainfire/libsuperuser/Shell$Threaded;->threadCounter:I

    .line 2699
    monitor-exit v0

    return v1

    .line 2700
    .end local v1    # "ret":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isReserved()Z
    .locals 1

    .line 2933
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->reserved:Z

    return v0
.end method

.method private protect()V
    .locals 2

    .line 2753
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onCloseCalledSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2754
    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onClosedCalled:Z

    if-nez v1, :cond_0

    .line 2755
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Garbage;->protect(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    .line 2757
    :cond_0
    monitor-exit v0

    .line 2758
    return-void

    .line 2757
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setReserved(Z)V
    .locals 0
    .param p1, "reserved"    # Z

    .line 2937
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->reserved:Z

    .line 2938
    return-void
.end method


# virtual methods
.method public ac()Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;
    .locals 1

    .line 2925
    instance-of v0, p0, Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;

    if-eqz v0, :cond_0

    .line 2926
    move-object v0, p0

    check-cast v0, Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;

    return-object v0

    .line 2928
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    .line 2782
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->protect()V

    .line 2785
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    if-eqz v0, :cond_0

    .line 2786
    invoke-super {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeWhenIdle()V

    goto :goto_0

    .line 2788
    :cond_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->closeWhenIdle()V

    .line 2790
    :goto_0
    return-void
.end method

.method protected closeImmediately(Z)V
    .locals 4
    .param p1, "fromIdle"    # Z

    .line 2794
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->protect()V

    .line 2796
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    if-eqz v0, :cond_6

    .line 2797
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 2798
    const/4 v1, 0x0

    .line 2799
    .local v1, "callRelease":Z
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalledSync:Ljava/lang/Object;

    monitor-enter v2

    .line 2800
    :try_start_0
    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    if-nez v3, :cond_0

    .line 2801
    const/4 v1, 0x1

    .line 2803
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2804
    if-eqz v1, :cond_1

    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->access$4600(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    .line 2805
    :cond_1
    iget-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->closeEvenIfPooled:Z

    if-eqz v2, :cond_2

    .line 2806
    invoke-super {p0, v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    .line 2808
    .end local v1    # "callRelease":Z
    :cond_2
    goto :goto_0

    .line 2803
    .restart local v1    # "callRelease":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2809
    .end local v1    # "callRelease":Z
    :cond_3
    const/4 v1, 0x0

    .line 2810
    .local v1, "callRemove":Z
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalledSync:Ljava/lang/Object;

    monitor-enter v2

    .line 2811
    :try_start_2
    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    if-nez v3, :cond_4

    .line 2812
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    .line 2813
    const/4 v0, 0x1

    move v1, v0

    .line 2815
    :cond_4
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2816
    if-eqz v1, :cond_5

    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->access$4700(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    .line 2817
    :cond_5
    const/4 v0, 0x0

    invoke-super {p0, v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    .line 2818
    .end local v1    # "callRemove":Z
    goto :goto_0

    .line 2815
    .restart local v1    # "callRemove":Z
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 2820
    .end local v1    # "callRemove":Z
    :cond_6
    invoke-super {p0, p1}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    .line 2822
    :goto_0
    return-void
.end method

.method public closeWhenIdle()V
    .locals 1

    .line 2844
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->closeWhenIdle(Z)V

    .line 2845
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2748
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->closed:Z

    .line 2749
    :cond_0
    invoke-super {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->finalize()V

    .line 2750
    return-void
.end method

.method protected onClosed()V
    .locals 4

    .line 2857
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->inClosingJoin:Z

    if-eqz v0, :cond_0

    return-void

    .line 2859
    :cond_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->pooled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 2860
    const/4 v0, 0x0

    .line 2861
    .local v0, "callRemove":Z
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalledSync:Ljava/lang/Object;

    monitor-enter v2

    .line 2862
    :try_start_0
    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    if-nez v3, :cond_1

    .line 2863
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    .line 2864
    const/4 v0, 0x1

    .line 2866
    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2867
    if-eqz v0, :cond_2

    .line 2868
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->protect()V

    .line 2869
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->access$4700(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    goto :goto_0

    .line 2866
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 2874
    .end local v0    # "callRemove":Z
    :cond_2
    :goto_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onCloseCalledSync:Ljava/lang/Object;

    if-nez v0, :cond_3

    return-void

    .line 2876
    :cond_3
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onCloseCalledSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2877
    :try_start_2
    iget-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onClosedCalled:Z

    if-eqz v2, :cond_4

    monitor-exit v0

    return-void

    .line 2878
    :cond_4
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onClosedCalled:Z

    .line 2879
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2882
    :try_start_3
    invoke-super {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->onClosed()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2884
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2885
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->collect()V

    goto :goto_1

    .line 2887
    :cond_5
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handler:Landroid/os/Handler;

    new-instance v1, Leu/chainfire/libsuperuser/Shell$Threaded$1;

    invoke-direct {v1, p0}, Leu/chainfire/libsuperuser/Shell$Threaded$1;-><init>(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2907
    nop

    .line 2908
    :goto_1
    return-void

    .line 2884
    :catchall_1
    move-exception v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_6

    .line 2885
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Threaded;->collect()V

    goto :goto_2

    .line 2887
    :cond_6
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->handler:Landroid/os/Handler;

    new-instance v2, Leu/chainfire/libsuperuser/Shell$Threaded$1;

    invoke-direct {v2, p0}, Leu/chainfire/libsuperuser/Shell$Threaded$1;-><init>(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2907
    :goto_2
    throw v0

    .line 2879
    :catchall_2
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method wasPoolRemoveCalled()Z
    .locals 2

    .line 2848
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalledSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2849
    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Threaded;->onPoolRemoveCalled:Z

    monitor-exit v0

    return v1

    .line 2850
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
