.class public final Lorg/junit/internal/requests/FilterRequest;
.super Lorg/junit/runner/Request;
.source "FilterRequest.java"


# instance fields
.field private final fFilter:Lorg/junit/runner/manipulation/Filter;

.field private final request:Lorg/junit/runner/Request;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Request;Lorg/junit/runner/manipulation/Filter;)V
    .locals 0
    .param p1, "request"    # Lorg/junit/runner/Request;
    .param p2, "filter"    # Lorg/junit/runner/manipulation/Filter;

    .line 28
    invoke-direct {p0}, Lorg/junit/runner/Request;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/junit/internal/requests/FilterRequest;->request:Lorg/junit/runner/Request;

    .line 30
    iput-object p2, p0, Lorg/junit/internal/requests/FilterRequest;->fFilter:Lorg/junit/runner/manipulation/Filter;

    .line 31
    return-void
.end method


# virtual methods
.method public getRunner()Lorg/junit/runner/Runner;
    .locals 6

    .line 36
    :try_start_0
    iget-object v0, p0, Lorg/junit/internal/requests/FilterRequest;->request:Lorg/junit/runner/Request;

    invoke-virtual {v0}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    .line 37
    .local v0, "runner":Lorg/junit/runner/Runner;
    iget-object v1, p0, Lorg/junit/internal/requests/FilterRequest;->fFilter:Lorg/junit/runner/manipulation/Filter;

    invoke-virtual {v1, v0}, Lorg/junit/runner/manipulation/Filter;->apply(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/junit/runner/manipulation/NoTestsRemainException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object v0

    .line 39
    .end local v0    # "runner":Lorg/junit/runner/Runner;
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Lorg/junit/runner/manipulation/NoTestsRemainException;
    new-instance v1, Lorg/junit/internal/runners/ErrorReportingRunner;

    const-class v2, Lorg/junit/runner/manipulation/Filter;

    new-instance v3, Ljava/lang/Exception;

    iget-object v4, p0, Lorg/junit/internal/requests/FilterRequest;->fFilter:Lorg/junit/runner/manipulation/Filter;

    invoke-virtual {v4}, Lorg/junit/runner/manipulation/Filter;->describe()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/junit/internal/requests/FilterRequest;->request:Lorg/junit/runner/Request;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "No tests found matching %s from %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lorg/junit/internal/runners/ErrorReportingRunner;-><init>(Ljava/lang/Class;Ljava/lang/Throwable;)V

    return-object v1
.end method
