.class public abstract Lorg/junit/internal/ComparisonCriteria;
.super Ljava/lang/Object;
.source "ComparisonCriteria.java"


# static fields
.field private static final END_OF_ARRAY_SENTINEL:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 94
    const-string v0, "end of array"

    invoke-static {v0}, Lorg/junit/internal/ComparisonCriteria;->objectWithToString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/junit/internal/ComparisonCriteria;->END_OF_ARRAY_SENTINEL:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 10
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "expecteds"    # Ljava/lang/Object;
    .param p3, "actuals"    # Ljava/lang/Object;
    .param p4, "outer"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 33
    if-eq p2, p3, :cond_9

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 40
    :cond_0
    const-string v0, ""

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "header":Ljava/lang/String;
    :goto_0
    if-eqz p4, :cond_2

    move-object v0, v1

    .line 45
    .local v0, "exceptionMessage":Ljava/lang/String;
    :cond_2
    if-nez p2, :cond_3

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "expected array was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 48
    :cond_3
    if-nez p3, :cond_4

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "actual array was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/junit/Assert;->fail(Ljava/lang/String;)V

    .line 52
    :cond_4
    invoke-static {p3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    .line 53
    .local v2, "actualsLength":I
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    .line 54
    .local v3, "expectedsLength":I
    if-eq v2, v3, :cond_5

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "array lengths differed, expected.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " actual.length="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 60
    .local v4, "prefixLength":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_7

    .line 61
    invoke-static {p2, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6

    .line 62
    .local v6, "expected":Ljava/lang/Object;
    invoke-static {p3, v5}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v7

    .line 64
    .local v7, "actual":Ljava/lang/Object;
    invoke-direct {p0, v6}, Lorg/junit/internal/ComparisonCriteria;->isArray(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-direct {p0, v7}, Lorg/junit/internal/ComparisonCriteria;->isArray(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 66
    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0, p1, v6, v7, v8}, Lorg/junit/internal/ComparisonCriteria;->arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
    :try_end_0
    .catch Lorg/junit/internal/ArrayComparisonFailure; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_2

    .line 70
    :catch_0
    move-exception v8

    .line 72
    .local v8, "e":Ljava/lang/AssertionError;
    new-instance v9, Lorg/junit/internal/ArrayComparisonFailure;

    invoke-direct {v9, v1, v8, v5}, Lorg/junit/internal/ArrayComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/AssertionError;I)V

    throw v9

    .line 67
    .end local v8    # "e":Ljava/lang/AssertionError;
    :catch_1
    move-exception v8

    .line 68
    .local v8, "e":Lorg/junit/internal/ArrayComparisonFailure;
    invoke-virtual {v8, v5}, Lorg/junit/internal/ArrayComparisonFailure;->addDimension(I)V

    .line 69
    throw v8

    .line 76
    .end local v8    # "e":Lorg/junit/internal/ArrayComparisonFailure;
    :cond_6
    :try_start_1
    invoke-virtual {p0, v6, v7}, Lorg/junit/internal/ComparisonCriteria;->assertElementsEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_2

    .line 79
    nop

    .line 60
    .end local v6    # "expected":Ljava/lang/Object;
    .end local v7    # "actual":Ljava/lang/Object;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 77
    .restart local v6    # "expected":Ljava/lang/Object;
    .restart local v7    # "actual":Ljava/lang/Object;
    :catch_2
    move-exception v8

    .line 78
    .local v8, "e":Ljava/lang/AssertionError;
    new-instance v9, Lorg/junit/internal/ArrayComparisonFailure;

    invoke-direct {v9, v1, v8, v5}, Lorg/junit/internal/ArrayComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/AssertionError;I)V

    throw v9

    .line 83
    .end local v5    # "i":I
    .end local v6    # "expected":Ljava/lang/Object;
    .end local v7    # "actual":Ljava/lang/Object;
    .end local v8    # "e":Ljava/lang/AssertionError;
    :cond_7
    if-eq v2, v3, :cond_8

    .line 84
    invoke-direct {p0, p2, v3, v4}, Lorg/junit/internal/ComparisonCriteria;->getToStringableArrayElement(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v5

    .line 85
    .local v5, "expected":Ljava/lang/Object;
    invoke-direct {p0, p3, v2, v4}, Lorg/junit/internal/ComparisonCriteria;->getToStringableArrayElement(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v6

    .line 87
    .local v6, "actual":Ljava/lang/Object;
    :try_start_2
    invoke-static {v5, v6}, Lorg/junit/Assert;->assertEquals(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_2} :catch_3

    .line 90
    goto :goto_3

    .line 88
    :catch_3
    move-exception v7

    .line 89
    .local v7, "e":Ljava/lang/AssertionError;
    new-instance v8, Lorg/junit/internal/ArrayComparisonFailure;

    invoke-direct {v8, v1, v7, v4}, Lorg/junit/internal/ArrayComparisonFailure;-><init>(Ljava/lang/String;Ljava/lang/AssertionError;I)V

    throw v8

    .line 92
    .end local v5    # "expected":Ljava/lang/Object;
    .end local v6    # "actual":Ljava/lang/Object;
    .end local v7    # "e":Ljava/lang/AssertionError;
    :cond_8
    :goto_3
    return-void

    .line 38
    .end local v0    # "exceptionMessage":Ljava/lang/String;
    .end local v1    # "header":Ljava/lang/String;
    .end local v2    # "actualsLength":I
    .end local v3    # "expectedsLength":I
    .end local v4    # "prefixLength":I
    :cond_9
    :goto_4
    return-void
.end method

.method private componentTypeName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 119
    .local p1, "arrayClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 120
    .local v0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/junit/internal/ComparisonCriteria;->componentTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 123
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getToStringableArrayElement(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "length"    # I
    .param p3, "index"    # I

    .line 97
    if-ge p3, p2, :cond_1

    .line 98
    invoke-static {p1, p3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    .line 99
    .local v0, "element":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/junit/internal/ComparisonCriteria;->isArray(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/junit/internal/ComparisonCriteria;->componentTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/junit/internal/ComparisonCriteria;->objectWithToString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 102
    :cond_0
    return-object v0

    .line 105
    .end local v0    # "element":Ljava/lang/Object;
    :cond_1
    sget-object v0, Lorg/junit/internal/ComparisonCriteria;->END_OF_ARRAY_SENTINEL:Ljava/lang/Object;

    return-object v0
.end method

.method private isArray(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "expected"    # Ljava/lang/Object;

    .line 128
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static objectWithToString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 110
    new-instance v0, Lorg/junit/internal/ComparisonCriteria$1;

    invoke-direct {v0, p0}, Lorg/junit/internal/ComparisonCriteria$1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "expecteds"    # Ljava/lang/Object;
    .param p3, "actuals"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/internal/ArrayComparisonFailure;
        }
    .end annotation

    .line 28
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/junit/internal/ComparisonCriteria;->arrayEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 29
    return-void
.end method

.method protected abstract assertElementsEqual(Ljava/lang/Object;Ljava/lang/Object;)V
.end method
