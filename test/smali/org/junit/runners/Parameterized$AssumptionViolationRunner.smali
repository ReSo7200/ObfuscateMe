.class Lorg/junit/runners/Parameterized$AssumptionViolationRunner;
.super Lorg/junit/runner/Runner;
.source "Parameterized.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/Parameterized;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AssumptionViolationRunner"
.end annotation


# instance fields
.field private final description:Lorg/junit/runner/Description;

.field private final exception:Lorg/junit/internal/AssumptionViolatedException;


# direct methods
.method constructor <init>(Lorg/junit/runners/model/TestClass;Ljava/lang/String;Lorg/junit/internal/AssumptionViolatedException;)V
    .locals 3
    .param p1, "testClass"    # Lorg/junit/runners/model/TestClass;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "exception"    # Lorg/junit/internal/AssumptionViolatedException;

    .line 342
    invoke-direct {p0}, Lorg/junit/runner/Runner;-><init>()V

    .line 343
    invoke-virtual {p1}, Lorg/junit/runners/model/TestClass;->getJavaClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() assumption violation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/junit/runner/Description;->createTestDescription(Ljava/lang/Class;Ljava/lang/String;)Lorg/junit/runner/Description;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;->description:Lorg/junit/runner/Description;

    .line 346
    iput-object p3, p0, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;->exception:Lorg/junit/internal/AssumptionViolatedException;

    .line 347
    return-void
.end method


# virtual methods
.method public getDescription()Lorg/junit/runner/Description;
    .locals 1

    .line 351
    iget-object v0, p0, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;->description:Lorg/junit/runner/Description;

    return-object v0
.end method

.method public run(Lorg/junit/runner/notification/RunNotifier;)V
    .locals 3
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;

    .line 356
    new-instance v0, Lorg/junit/runner/notification/Failure;

    iget-object v1, p0, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;->description:Lorg/junit/runner/Description;

    iget-object v2, p0, Lorg/junit/runners/Parameterized$AssumptionViolationRunner;->exception:Lorg/junit/internal/AssumptionViolatedException;

    invoke-direct {v0, v1, v2}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v0}, Lorg/junit/runner/notification/RunNotifier;->fireTestAssumptionFailed(Lorg/junit/runner/notification/Failure;)V

    .line 357
    return-void
.end method
