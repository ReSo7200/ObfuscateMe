.class Lorg/junit/runners/model/TestClass$MethodComparator;
.super Ljava/lang/Object;
.source "TestClass.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/model/TestClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/junit/runners/model/FrameworkMethod;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/runners/model/TestClass$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/runners/model/TestClass$1;

    .line 342
    invoke-direct {p0}, Lorg/junit/runners/model/TestClass$MethodComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 342
    move-object v0, p1

    check-cast v0, Lorg/junit/runners/model/FrameworkMethod;

    move-object v1, p2

    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    invoke-virtual {p0, v0, v1}, Lorg/junit/runners/model/TestClass$MethodComparator;->compare(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/FrameworkMethod;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/runners/model/FrameworkMethod;)I
    .locals 3
    .param p1, "left"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "right"    # Lorg/junit/runners/model/FrameworkMethod;

    .line 345
    sget-object v0, Lorg/junit/internal/MethodSorter;->NAME_ASCENDING:Ljava/util/Comparator;

    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p2}, Lorg/junit/runners/model/FrameworkMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
