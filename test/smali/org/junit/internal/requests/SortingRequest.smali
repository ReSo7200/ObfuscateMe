.class public Lorg/junit/internal/requests/SortingRequest;
.super Lorg/junit/runner/Request;
.source "SortingRequest.java"


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;"
        }
    .end annotation
.end field

.field private final request:Lorg/junit/runner/Request;


# direct methods
.method public constructor <init>(Lorg/junit/runner/Request;Ljava/util/Comparator;)V
    .locals 0
    .param p1, "request"    # Lorg/junit/runner/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runner/Request;",
            "Ljava/util/Comparator<",
            "Lorg/junit/runner/Description;",
            ">;)V"
        }
    .end annotation

    .line 14
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lorg/junit/runner/Description;>;"
    invoke-direct {p0}, Lorg/junit/runner/Request;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/junit/internal/requests/SortingRequest;->request:Lorg/junit/runner/Request;

    .line 16
    iput-object p2, p0, Lorg/junit/internal/requests/SortingRequest;->comparator:Ljava/util/Comparator;

    .line 17
    return-void
.end method


# virtual methods
.method public getRunner()Lorg/junit/runner/Runner;
    .locals 3

    .line 21
    iget-object v0, p0, Lorg/junit/internal/requests/SortingRequest;->request:Lorg/junit/runner/Request;

    invoke-virtual {v0}, Lorg/junit/runner/Request;->getRunner()Lorg/junit/runner/Runner;

    move-result-object v0

    .line 22
    .local v0, "runner":Lorg/junit/runner/Runner;
    new-instance v1, Lorg/junit/runner/manipulation/Sorter;

    iget-object v2, p0, Lorg/junit/internal/requests/SortingRequest;->comparator:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Lorg/junit/runner/manipulation/Sorter;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v1, v0}, Lorg/junit/runner/manipulation/Sorter;->apply(Ljava/lang/Object;)V

    .line 23
    return-object v0
.end method
