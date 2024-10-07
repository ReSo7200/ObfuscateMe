.class Lorg/junit/runner/manipulation/Filter$3;
.super Lorg/junit/runner/manipulation/Filter;
.source "Filter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/runner/manipulation/Filter;->intersect(Lorg/junit/runner/manipulation/Filter;)Lorg/junit/runner/manipulation/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runner/manipulation/Filter;

.field final synthetic val$first:Lorg/junit/runner/manipulation/Filter;

.field final synthetic val$second:Lorg/junit/runner/manipulation/Filter;


# direct methods
.method constructor <init>(Lorg/junit/runner/manipulation/Filter;Lorg/junit/runner/manipulation/Filter;Lorg/junit/runner/manipulation/Filter;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lorg/junit/runner/manipulation/Filter$3;->this$0:Lorg/junit/runner/manipulation/Filter;

    iput-object p2, p0, Lorg/junit/runner/manipulation/Filter$3;->val$first:Lorg/junit/runner/manipulation/Filter;

    iput-object p3, p0, Lorg/junit/runner/manipulation/Filter$3;->val$second:Lorg/junit/runner/manipulation/Filter;

    invoke-direct {p0}, Lorg/junit/runner/manipulation/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 2

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/junit/runner/manipulation/Filter$3;->val$first:Lorg/junit/runner/manipulation/Filter;

    invoke-virtual {v1}, Lorg/junit/runner/manipulation/Filter;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/runner/manipulation/Filter$3;->val$second:Lorg/junit/runner/manipulation/Filter;

    invoke-virtual {v1}, Lorg/junit/runner/manipulation/Filter;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public shouldRun(Lorg/junit/runner/Description;)Z
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 112
    iget-object v0, p0, Lorg/junit/runner/manipulation/Filter$3;->val$first:Lorg/junit/runner/manipulation/Filter;

    invoke-virtual {v0, p1}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/junit/runner/manipulation/Filter$3;->val$second:Lorg/junit/runner/manipulation/Filter;

    invoke-virtual {v0, p1}, Lorg/junit/runner/manipulation/Filter;->shouldRun(Lorg/junit/runner/Description;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
