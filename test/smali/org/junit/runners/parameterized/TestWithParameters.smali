.class public Lorg/junit/runners/parameterized/TestWithParameters;
.super Ljava/lang/Object;
.source "TestWithParameters.java"


# instance fields
.field private final name:Ljava/lang/String;

.field private final parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final testClass:Lorg/junit/runners/model/TestClass;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/junit/runners/model/TestClass;Ljava/util/List;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "testClass"    # Lorg/junit/runners/model/TestClass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/junit/runners/model/TestClass;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p3, "parameters":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "The name is missing."

    invoke-static {p1, v0}, Lorg/junit/internal/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 28
    const-string v0, "The test class is missing."

    invoke-static {p2, v0}, Lorg/junit/internal/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    const-string v0, "The parameters are missing."

    invoke-static {p3, v0}, Lorg/junit/internal/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 58
    return v0

    .line 60
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 61
    return v1

    .line 63
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 64
    return v1

    .line 66
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/junit/runners/parameterized/TestWithParameters;

    .line 67
    .local v2, "other":Lorg/junit/runners/parameterized/TestWithParameters;
    iget-object v3, p0, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    iget-object v4, v2, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    iget-object v4, v2, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    iget-object v4, v2, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v3, v4}, Lorg/junit/runners/model/TestClass;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getTestClass()Lorg/junit/runners/model/TestClass;
    .locals 1

    .line 40
    iget-object v0, p0, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 49
    const/16 v0, 0x399b

    .line 50
    .local v0, "prime":I
    iget-object v1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    .line 51
    .local v1, "result":I
    mul-int v2, v0, v1

    iget-object v3, p0, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v3}, Lorg/junit/runners/model/TestClass;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 52
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int v1, v0, v2

    iget-object v3, p0, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->testClass:Lorg/junit/runners/model/TestClass;

    invoke-virtual {v1}, Lorg/junit/runners/model/TestClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' with parameters "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/junit/runners/parameterized/TestWithParameters;->parameters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
