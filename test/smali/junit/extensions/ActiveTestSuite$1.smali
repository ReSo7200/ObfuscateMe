.class Ljunit/extensions/ActiveTestSuite$1;
.super Ljava/lang/Thread;
.source "ActiveTestSuite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/extensions/ActiveTestSuite;->runTest(Ljunit/framework/Test;Ljunit/framework/TestResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljunit/extensions/ActiveTestSuite;

.field final synthetic val$result:Ljunit/framework/TestResult;

.field final synthetic val$test:Ljunit/framework/Test;


# direct methods
.method constructor <init>(Ljunit/extensions/ActiveTestSuite;Ljunit/framework/Test;Ljunit/framework/TestResult;)V
    .locals 0

    .line 41
    iput-object p1, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    iput-object p2, p0, Ljunit/extensions/ActiveTestSuite$1;->val$test:Ljunit/framework/Test;

    iput-object p3, p0, Ljunit/extensions/ActiveTestSuite$1;->val$result:Ljunit/framework/TestResult;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 47
    :try_start_0
    iget-object v0, p0, Ljunit/extensions/ActiveTestSuite$1;->val$test:Ljunit/framework/Test;

    iget-object v1, p0, Ljunit/extensions/ActiveTestSuite$1;->val$result:Ljunit/framework/TestResult;

    invoke-interface {v0, v1}, Ljunit/framework/Test;->run(Ljunit/framework/TestResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    iget-object v0, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    invoke-virtual {v0}, Ljunit/extensions/ActiveTestSuite;->runFinished()V

    .line 50
    nop

    .line 51
    return-void

    .line 49
    :catchall_0
    move-exception v0

    iget-object v1, p0, Ljunit/extensions/ActiveTestSuite$1;->this$0:Ljunit/extensions/ActiveTestSuite;

    invoke-virtual {v1}, Ljunit/extensions/ActiveTestSuite;->runFinished()V

    throw v0
.end method
