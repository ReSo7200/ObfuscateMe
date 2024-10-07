.class public Lorg/junit/internal/requests/OrderingRequest;
.super Lorg/junit/internal/requests/MemoizingRequest;
.source "OrderingRequest.java"


# instance fields
.field private final ordering:Lorg/junit/runner/manipulation/Ordering;

.field private final request:Lorg/junit/runner/Request;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Request;Lorg/junit/runner/manipulation/Ordering;)V
    .locals 0
    .param p1, "request"    # Lorg/junit/runner/Request;
    .param p2, "ordering"    # Lorg/junit/runner/manipulation/Ordering;

    .line 14
    invoke-direct {p0}, Lorg/junit/internal/requests/MemoizingRequest;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/junit/internal/requests/OrderingRequest;->request:Lorg/junit/runner/Request;

    .line 16
    iput-object p2, p0, Lorg/junit/internal/requests/OrderingRequest;->ordering:Lorg/junit/runner/manipulation/Ordering;

    .line 17
    return-void
.end method


# virtual methods
.method protected createRunner()Lorg/junit/runner/Runner;
    .locals 4

    .line 21
    iget-object v0, p0, Lorg/junit/internal/requests/OrderingRequest;->request:Lorg/junit/runner/Request;

    invoke-virtual {v0}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    .line 23
    .local v0, "runner":Lorg/junit/runner/Runner;
    :try_start_0
    iget-object v1, p0, Lorg/junit/internal/requests/OrderingRequest;->ordering:Lorg/junit/runner/manipulation/Ordering;

    invoke-virtual {v1, v0}, Lorg/junit/runner/manipulation/Ordering;->apply(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/junit/runner/manipulation/InvalidOrderingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    nop

    .line 27
    return-object v0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "e":Lorg/junit/runner/manipulation/InvalidOrderingException;
    new-instance v2, Lorg/junit/internal/runners/ErrorReportingRunner;

    iget-object v3, p0, Lorg/junit/internal/requests/OrderingRequest;->ordering:Lorg/junit/runner/manipulation/Ordering;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lorg/junit/internal/runners/ErrorReportingRunner;-><init>(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v2
.end method
