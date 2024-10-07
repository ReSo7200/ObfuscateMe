.class Lorg/junit/internal/runners/JUnit4ClassRunner$2;
.super Ljava/lang/Object;
.source "JUnit4ClassRunner.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/internal/runners/JUnit4ClassRunner;->sort(Lorg/junit/runner/manipulation/Sorter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/internal/runners/JUnit4ClassRunner;

.field final synthetic val$sorter:Lorg/junit/runner/manipulation/Sorter;


# direct methods
.method constructor <init>(Lorg/junit/internal/runners/JUnit4ClassRunner;Lorg/junit/runner/manipulation/Sorter;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->this$0:Lorg/junit/internal/runners/JUnit4ClassRunner;

    iput-object p2, p0, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->val$sorter:Lorg/junit/runner/manipulation/Sorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 137
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/Method;

    move-object v1, p2

    check-cast v1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, v0, v1}, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)I
    .locals 3
    .param p1, "o1"    # Ljava/lang/reflect/Method;
    .param p2, "o2"    # Ljava/lang/reflect/Method;

    .line 139
    iget-object v0, p0, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->val$sorter:Lorg/junit/runner/manipulation/Sorter;

    iget-object v1, p0, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->this$0:Lorg/junit/internal/runners/JUnit4ClassRunner;

    invoke-virtual {v1, p1}, Lorg/junit/internal/runners/JUnit4ClassRunner;->methodDescription(Ljava/lang/reflect/Method;)Lorg/junit/runner/Description;

    move-result-object v1

    iget-object v2, p0, Lorg/junit/internal/runners/JUnit4ClassRunner$2;->this$0:Lorg/junit/internal/runners/JUnit4ClassRunner;

    invoke-virtual {v2, p2}, Lorg/junit/internal/runners/JUnit4ClassRunner;->methodDescription(Ljava/lang/reflect/Method;)Lorg/junit/runner/Description;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/junit/runner/manipulation/Sorter;->compare(Lorg/junit/runner/Description;Lorg/junit/runner/Description;)I

    move-result v0

    return v0
.end method
