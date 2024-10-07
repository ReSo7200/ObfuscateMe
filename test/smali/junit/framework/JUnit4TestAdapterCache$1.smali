.class Ljunit/framework/JUnit4TestAdapterCache$1;
.super Lorg/junit/runner/notification/RunListener;
.source "JUnit4TestAdapterCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljunit/framework/JUnit4TestAdapterCache;->getNotifier(Ljunit/framework/TestResult;Ljunit/framework/JUnit4TestAdapter;)Lorg/junit/runner/notification/RunNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljunit/framework/JUnit4TestAdapterCache;

.field final synthetic val$result:Ljunit/framework/TestResult;


# direct methods
.method constructor <init>(Ljunit/framework/JUnit4TestAdapterCache;Ljunit/framework/TestResult;)V
    .locals 0

    .line 46
    iput-object p1, p0, Ljunit/framework/JUnit4TestAdapterCache$1;->this$0:Ljunit/framework/JUnit4TestAdapterCache;

    iput-object p2, p0, Ljunit/framework/JUnit4TestAdapterCache$1;->val$result:Ljunit/framework/TestResult;

    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    return-void
.end method


# virtual methods
.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 3
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapterCache$1;->val$result:Ljunit/framework/TestResult;

    iget-object v1, p0, Ljunit/framework/JUnit4TestAdapterCache$1;->this$0:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    move-result-object v1

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljunit/framework/TestResult;->addError(Ljunit/framework/Test;Ljava/lang/Throwable;)V

    .line 50
    return-void
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
    .locals 2
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapterCache$1;->val$result:Ljunit/framework/TestResult;

    iget-object v1, p0, Ljunit/framework/JUnit4TestAdapterCache$1;->this$0:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {v1, p1}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/TestResult;->endTest(Ljunit/framework/Test;)V

    .line 55
    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .locals 2
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 59
    iget-object v0, p0, Ljunit/framework/JUnit4TestAdapterCache$1;->val$result:Ljunit/framework/TestResult;

    iget-object v1, p0, Ljunit/framework/JUnit4TestAdapterCache$1;->this$0:Ljunit/framework/JUnit4TestAdapterCache;

    invoke-virtual {v1, p1}, Ljunit/framework/JUnit4TestAdapterCache;->asTest(Lorg/junit/runner/Description;)Ljunit/framework/Test;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljunit/framework/TestResult;->startTest(Ljunit/framework/Test;)V

    .line 60
    return-void
.end method
