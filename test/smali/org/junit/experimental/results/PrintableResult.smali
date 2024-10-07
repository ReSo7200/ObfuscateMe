.class public Lorg/junit/experimental/results/PrintableResult;
.super Ljava/lang/Object;
.source "PrintableResult.java"


# instance fields
.field private result:Lorg/junit/runner/Result;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p1, "failures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/Failure;>;"
    new-instance v0, Lorg/junit/experimental/results/FailureList;

    invoke-direct {v0, p1}, Lorg/junit/experimental/results/FailureList;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/junit/experimental/results/FailureList;->result()Lorg/junit/runner/Result;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/junit/experimental/results/PrintableResult;-><init>(Lorg/junit/runner/Result;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Lorg/junit/runner/Result;)V
    .locals 0
    .param p1, "result"    # Lorg/junit/runner/Result;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/junit/experimental/results/PrintableResult;->result:Lorg/junit/runner/Result;

    .line 48
    return-void
.end method

.method public static testResult(Ljava/lang/Class;)Lorg/junit/experimental/results/PrintableResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/experimental/results/PrintableResult;"
        }
    .end annotation

    .line 29
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p0}, Lorg/junit/runner/Request;->aClass(Ljava/lang/Class;)Lorg/junit/runner/Request;

    move-result-object v0

    invoke-static {v0}, Lorg/junit/experimental/results/PrintableResult;->testResult(Lorg/junit/runner/Request;)Lorg/junit/experimental/results/PrintableResult;

    move-result-object v0

    return-object v0
.end method

.method public static testResult(Lorg/junit/runner/Request;)Lorg/junit/experimental/results/PrintableResult;
    .locals 2
    .param p0, "request"    # Lorg/junit/runner/Request;

    .line 36
    new-instance v0, Lorg/junit/experimental/results/PrintableResult;

    new-instance v1, Lorg/junit/runner/JUnitCore;

    invoke-direct {v1}, Lorg/junit/runner/JUnitCore;-><init>()V

    invoke-virtual {v1, p0}, Lorg/junit/runner/JUnitCore;->run(Lorg/junit/runner/Request;)Lorg/junit/runner/Result;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/junit/experimental/results/PrintableResult;-><init>(Lorg/junit/runner/Result;)V

    return-object v0
.end method


# virtual methods
.method public failureCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/junit/experimental/results/PrintableResult;->result:Lorg/junit/runner/Result;

    invoke-virtual {v0}, Lorg/junit/runner/Result;->getFailures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public failures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/junit/experimental/results/PrintableResult;->result:Lorg/junit/runner/Result;

    invoke-virtual {v0}, Lorg/junit/runner/Result;->getFailures()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 68
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    .local v0, "stream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/junit/internal/TextListener;

    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Lorg/junit/internal/TextListener;-><init>(Ljava/io/PrintStream;)V

    iget-object v2, p0, Lorg/junit/experimental/results/PrintableResult;->result:Lorg/junit/runner/Result;

    invoke-virtual {v1, v2}, Lorg/junit/internal/TextListener;->testRunFinished(Lorg/junit/runner/Result;)V

    .line 70
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
