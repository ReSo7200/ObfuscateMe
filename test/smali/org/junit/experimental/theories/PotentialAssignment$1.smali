.class final Lorg/junit/experimental/theories/PotentialAssignment$1;
.super Lorg/junit/experimental/theories/PotentialAssignment;
.source "PotentialAssignment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/experimental/theories/PotentialAssignment;->forValue(Ljava/lang/String;Ljava/lang/Object;)Lorg/junit/experimental/theories/PotentialAssignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$value:Ljava/lang/Object;

    iput-object p2, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Lorg/junit/experimental/theories/PotentialAssignment;-><init>()V

    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 5

    .line 33
    iget-object v0, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$value:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "null"

    .local v0, "valueString":Ljava/lang/String;
    goto :goto_0

    .line 37
    .end local v0    # "valueString":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "\"%s\""

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$value:Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .restart local v0    # "valueString":Ljava/lang/String;
    goto :goto_0

    .line 38
    .end local v0    # "valueString":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .line 39
    .restart local v0    # "valueString":Ljava/lang/String;
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "[toString() threw %s: %s]"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 44
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_0
    iget-object v1, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$name:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s <from %s>"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 21
    iget-object v0, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$value:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    iget-object v0, p0, Lorg/junit/experimental/theories/PotentialAssignment$1;->val$value:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
