.class public final Lkotlinx/coroutines/internal/ExceptionsConstructorKt;
.super Ljava/lang/Object;
.source "ExceptionsConstructor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExceptionsConstructor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,116:1\n1#2:117\n11335#3:118\n11670#3,3:119\n12904#3,3:136\n1963#4,14:122\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstructor.kt\nkotlinx/coroutines/internal/ExceptionsConstructorKt\n*L\n45#1:118\n45#1:119,3\n82#1:136,3\n63#1:122,14\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u001a2\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\u0002`\u0007\"\u0008\u0008\u0000\u0010\u0008*\u00020\u00062\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u0002H\u00080\nH\u0002\u001a.\u0010\u000b\u001a\u0014\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005j\u0002`\u00072\u0012\u0010\u000c\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005H\u0002\u001a!\u0010\r\u001a\u0004\u0018\u0001H\u0008\"\u0008\u0008\u0000\u0010\u0008*\u00020\u00062\u0006\u0010\u000e\u001a\u0002H\u0008H\u0000\u00a2\u0006\u0002\u0010\u000f\u001a\u001b\u0010\u0010\u001a\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\n2\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003H\u0082\u0010\u001a\u0018\u0010\u0012\u001a\u00020\u0003*\u0006\u0012\u0002\u0008\u00030\n2\u0006\u0010\u0013\u001a\u00020\u0003H\u0002\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000*(\u0008\u0002\u0010\u0014\"\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00052\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u0005\u00a8\u0006\u0015"
    }
    d2 = {
        "ctorCache",
        "Lkotlinx/coroutines/internal/CtorCache;",
        "throwableFields",
        "",
        "createConstructor",
        "Lkotlin/Function1;",
        "",
        "Lkotlinx/coroutines/internal/Ctor;",
        "E",
        "clz",
        "Ljava/lang/Class;",
        "safeCtor",
        "block",
        "tryCopyException",
        "exception",
        "(Ljava/lang/Throwable;)Ljava/lang/Throwable;",
        "fieldsCount",
        "accumulator",
        "fieldsCountOrDefault",
        "defaultValue",
        "Ctor",
        "kotlinx-coroutines-core"
    }
    k = 0x2
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final ctorCache:Lkotlinx/coroutines/internal/CtorCache;

.field private static final throwableFields:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Ljava/lang/Throwable;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCountOrDefault(Ljava/lang/Class;I)I

    move-result v0

    sput v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->throwableFields:I

    .line 16
    nop

    .line 17
    :try_start_0
    invoke-static {}, Lkotlinx/coroutines/internal/FastServiceLoaderKt;->getANDROID_DETECTED()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lkotlinx/coroutines/internal/WeakMapCtorCache;->INSTANCE:Lkotlinx/coroutines/internal/WeakMapCtorCache;

    check-cast v0, Lkotlinx/coroutines/internal/CtorCache;

    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lkotlinx/coroutines/internal/ClassValueCtorCache;->INSTANCE:Lkotlinx/coroutines/internal/ClassValueCtorCache;

    check-cast v0, Lkotlinx/coroutines/internal/CtorCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    goto :goto_1

    .line 19
    :catchall_0
    move-exception v0

    .line 21
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lkotlinx/coroutines/internal/WeakMapCtorCache;->INSTANCE:Lkotlinx/coroutines/internal/WeakMapCtorCache;

    check-cast v1, Lkotlinx/coroutines/internal/CtorCache;

    move-object v0, v1

    .line 16
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    sput-object v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->ctorCache:Lkotlinx/coroutines/internal/CtorCache;

    return-void
.end method

.method public static final synthetic access$createConstructor(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "clz"    # Ljava/lang/Class;

    .line 1
    invoke-static {p0}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->createConstructor(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    return-object v0
.end method

.method private static final createConstructor(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;
    .locals 18
    .param p0, "clz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$nullResult$1;->INSTANCE:Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$nullResult$1;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 36
    .local v0, "nullResult":Lkotlin/jvm/functions/Function1;
    sget v1, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->throwableFields:I

    const/4 v2, 0x0

    move-object/from16 v3, p0

    invoke-static {v3, v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCountOrDefault(Ljava/lang/Class;I)I

    move-result v4

    if-eq v1, v4, :cond_0

    return-object v0

    .line 45
    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, "$this$map$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 118
    .local v4, "$i$f$map":I
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v5, Ljava/util/Collection;

    .local v5, "destination$iv$iv":Ljava/util/Collection;
    move-object v6, v1

    .local v6, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 119
    .local v7, "$i$f$mapTo":I
    array-length v8, v6

    move v9, v2

    :goto_0
    const/4 v10, 0x0

    if-ge v9, v8, :cond_4

    aget-object v11, v6, v9

    .line 120
    .local v11, "item$iv$iv":Ljava/lang/Object;
    move-object v12, v11

    .local v12, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v13, 0x0

    .line 46
    .local v13, "$i$a$-map-ExceptionsConstructorKt$createConstructor$1":I
    invoke-virtual {v12}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v14

    .line 47
    .local v14, "p":[Ljava/lang/Class;
    array-length v15, v14

    const/16 v16, 0x1

    const/16 v17, -0x1

    packed-switch v15, :pswitch_data_0

    .line 61
    move v15, v2

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    goto/16 :goto_1

    .line 48
    :pswitch_0
    nop

    .line 49
    aget-object v15, v14, v2

    const-class v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v2, v14, v16

    const-class v15, Ljava/lang/Throwable;

    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 50
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$1$1;

    invoke-direct {v2, v12}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$1$1;-><init>(Ljava/lang/reflect/Constructor;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->safeCtor(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v15, 0x0

    goto :goto_1

    .line 51
    :cond_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v15, 0x0

    goto :goto_1

    .line 53
    :pswitch_1
    const/4 v2, 0x0

    aget-object v15, v14, v2

    .line 54
    const-class v2, Ljava/lang/String;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 55
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$1$2;

    invoke-direct {v2, v12}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$1$2;-><init>(Ljava/lang/reflect/Constructor;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->safeCtor(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v15, 0x0

    goto :goto_1

    .line 56
    :cond_2
    const-class v2, Ljava/lang/Throwable;

    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 57
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$1$3;

    invoke-direct {v2, v12}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$1$3;-><init>(Ljava/lang/reflect/Constructor;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->safeCtor(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v15, 0x0

    goto :goto_1

    .line 58
    :cond_3
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v10, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v15, 0x0

    goto :goto_1

    .line 60
    :pswitch_2
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$1$4;

    invoke-direct {v2, v12}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$createConstructor$1$4;-><init>(Ljava/lang/reflect/Constructor;)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-static {v2}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->safeCtor(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v2, v10}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 47
    :goto_1
    nop

    .line 120
    .end local v12    # "constructor":Ljava/lang/reflect/Constructor;
    .end local v13    # "$i$a$-map-ExceptionsConstructorKt$createConstructor$1":I
    .end local v14    # "p":[Ljava/lang/Class;
    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v11    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v9, v9, 0x1

    move v2, v15

    goto/16 :goto_0

    .line 121
    :cond_4
    nop

    .end local v5    # "destination$iv$iv":Ljava/util/Collection;
    .end local v6    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v7    # "$i$f$mapTo":I
    move-object v2, v5

    check-cast v2, Ljava/util/List;

    .line 118
    nop

    .line 45
    .end local v1    # "$this$map$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$map":I
    check-cast v2, Ljava/lang/Iterable;

    .line 63
    move-object v1, v2

    .local v1, "$this$maxByOrNull$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 122
    .local v2, "$i$f$maxByOrNull":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 123
    .local v4, "iterator$iv":Ljava/util/Iterator;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    .line 124
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .line 125
    .local v10, "maxElem$iv":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    .line 126
    :cond_6
    move-object v5, v10

    check-cast v5, Lkotlin/Pair;

    .local v5, "p0":Lkotlin/Pair;
    const/4 v6, 0x0

    .line 63
    .local v6, "$i$a$-maxByOrNull-ExceptionsConstructorKt$createConstructor$2":I
    invoke-virtual {v5}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v5

    .line 126
    .end local v5    # "p0":Lkotlin/Pair;
    .end local v6    # "$i$a$-maxByOrNull-ExceptionsConstructorKt$createConstructor$2":I
    nop

    .line 128
    .local v5, "maxValue$iv":I
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 129
    .local v6, "e$iv":Ljava/lang/Object;
    move-object v7, v6

    check-cast v7, Lkotlin/Pair;

    .local v7, "p0":Lkotlin/Pair;
    const/4 v8, 0x0

    .line 63
    .local v8, "$i$a$-maxByOrNull-ExceptionsConstructorKt$createConstructor$2":I
    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v7

    .line 129
    .end local v7    # "p0":Lkotlin/Pair;
    .end local v8    # "$i$a$-maxByOrNull-ExceptionsConstructorKt$createConstructor$2":I
    nop

    .line 130
    .local v7, "v$iv":I
    if-ge v5, v7, :cond_8

    .line 131
    move-object v8, v6

    .line 132
    .end local v10    # "maxElem$iv":Ljava/lang/Object;
    .local v8, "maxElem$iv":Ljava/lang/Object;
    move v5, v7

    move-object v10, v8

    .line 134
    .end local v6    # "e$iv":Ljava/lang/Object;
    .end local v7    # "v$iv":I
    .end local v8    # "maxElem$iv":Ljava/lang/Object;
    .restart local v10    # "maxElem$iv":Ljava/lang/Object;
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 135
    nop

    .line 63
    .end local v1    # "$this$maxByOrNull$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$maxByOrNull":I
    .end local v4    # "iterator$iv":Ljava/util/Iterator;
    .end local v5    # "maxValue$iv":I
    .end local v10    # "maxElem$iv":Ljava/lang/Object;
    :goto_2
    check-cast v10, Lkotlin/Pair;

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 45
    if-nez v1, :cond_a

    .line 63
    :cond_9
    move-object v1, v0

    .line 45
    :cond_a
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final fieldsCount(Ljava/lang/Class;I)I
    .locals 9
    .param p0, "$this$fieldsCount"    # Ljava/lang/Class;
    .param p1, "accumulator"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 82
    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .local v0, "$this$count$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 136
    .local v1, "$i$f$count":I
    const/4 v2, 0x0

    .line 137
    .local v2, "count$iv":I
    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v0, v4

    .local v5, "element$iv":Ljava/lang/Object;
    move-object v6, v5

    .local v6, "it":Ljava/lang/reflect/Field;
    const/4 v7, 0x0

    .line 82
    .local v7, "$i$a$-count-ExceptionsConstructorKt$fieldsCount$fieldsCount$1":I
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v8

    invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    .line 137
    .end local v6    # "it":Ljava/lang/reflect/Field;
    .end local v7    # "$i$a$-count-ExceptionsConstructorKt$fieldsCount$fieldsCount$1":I
    if-nez v8, :cond_0

    add-int/lit8 v2, v2, 0x1

    .end local v5    # "element$iv":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 138
    :cond_1
    nop

    .line 82
    .end local v0    # "$this$count$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$count":I
    .end local v2    # "count$iv":I
    move v0, v2

    .line 83
    .local v0, "fieldsCount":I
    add-int v1, p1, v0

    .line 84
    .local v1, "totalFields":I
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 85
    .local v2, "superClass":Ljava/lang/Class;
    :cond_2
    move-object p0, v2

    move p1, v1

    .end local v0    # "fieldsCount":I
    .end local v1    # "totalFields":I
    .end local v2    # "superClass":Ljava/lang/Class;
    goto :goto_0
.end method

.method static synthetic fieldsCount$default(Ljava/lang/Class;IILjava/lang/Object;)I
    .locals 0

    .line 81
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCount(Ljava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method private static final fieldsCountOrDefault(Ljava/lang/Class;I)I
    .locals 5
    .param p0, "$this$fieldsCountOrDefault"    # Ljava/lang/Class;
    .param p1, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 79
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 117
    .local v0, "$this$fieldsCountOrDefault_u24lambda_u242":Lkotlin/reflect/KClass;
    const/4 v1, 0x0

    .line 79
    .local v1, "$i$a$-runCatching-ExceptionsConstructorKt$fieldsCountOrDefault$1":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p0, v4, v2, v3}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->fieldsCount$default(Ljava/lang/Class;IILjava/lang/Object;)I

    move-result v2

    .end local v0    # "$this$fieldsCountOrDefault_u24lambda_u242":Lkotlin/reflect/KClass;
    .end local v1    # "$i$a$-runCatching-ExceptionsConstructorKt$fieldsCountOrDefault$1":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v0, v1

    :cond_0
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private static final safeCtor(Lkotlin/jvm/functions/Function1;)Lkotlin/jvm/functions/Function1;
    .locals 1
    .param p0, "block"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$safeCtor$1;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/internal/ExceptionsConstructorKt$safeCtor$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 76
    return-object v0
.end method

.method public static final tryCopyException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "exception"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 27
    instance-of v0, p0, Lkotlinx/coroutines/CopyableThrowable;

    if-eqz v0, :cond_1

    .line 28
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 117
    const/4 v0, 0x0

    .line 28
    .local v0, "$i$a$-runCatching-ExceptionsConstructorKt$tryCopyException$1":I
    move-object v1, p0

    check-cast v1, Lkotlinx/coroutines/CopyableThrowable;

    invoke-interface {v1}, Lkotlinx/coroutines/CopyableThrowable;->createCopy()Ljava/lang/Throwable;

    move-result-object v1

    .end local v0    # "$i$a$-runCatching-ExceptionsConstructorKt$tryCopyException$1":I
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 30
    :cond_1
    sget-object v0, Lkotlinx/coroutines/internal/ExceptionsConstructorKt;->ctorCache:Lkotlinx/coroutines/internal/CtorCache;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlinx/coroutines/internal/CtorCache;->get(Ljava/lang/Class;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method
