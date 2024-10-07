.class public Lorg/hamcrest/core/IsCollectionContaining;
.super Lorg/hamcrest/TypeSafeDiagnosingMatcher;
.source "IsCollectionContaining.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/TypeSafeDiagnosingMatcher<",
        "Ljava/lang/Iterable<",
        "-TT;>;>;"
    }
.end annotation


# instance fields
.field private final elementMatcher:Lorg/hamcrest/Matcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hamcrest/Matcher<",
            "-TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/hamcrest/Matcher;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)V"
        }
    .end annotation

    .line 17
    .local p0, "this":Lorg/hamcrest/core/IsCollectionContaining;, "Lorg/hamcrest/core/IsCollectionContaining<TT;>;"
    .local p1, "elementMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    invoke-direct {p0}, Lorg/hamcrest/TypeSafeDiagnosingMatcher;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/hamcrest/core/IsCollectionContaining;->elementMatcher:Lorg/hamcrest/Matcher;

    .line 19
    return-void
.end method

.method public static hasItem(Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 77
    .local p0, "item":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/hamcrest/core/IsCollectionContaining;

    invoke-static {p0}, Lorg/hamcrest/core/IsEqual;->equalTo(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/hamcrest/core/IsCollectionContaining;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static hasItem(Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "-TT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 59
    .local p0, "itemMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Lorg/hamcrest/core/IsCollectionContaining;

    invoke-direct {v0, p0}, Lorg/hamcrest/core/IsCollectionContaining;-><init>(Lorg/hamcrest/Matcher;)V

    return-object v0
.end method

.method public static varargs hasItems([Ljava/lang/Object;)Lorg/hamcrest/Matcher;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 118
    .local p0, "items":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-Ljava/lang/Iterable<TT;>;>;>;"
    move-object v1, p0

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 120
    .local v4, "element":Ljava/lang/Object;, "TT;"
    invoke-static {v4}, Lorg/hamcrest/core/IsCollectionContaining;->hasItem(Ljava/lang/Object;)Lorg/hamcrest/Matcher;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .end local v4    # "element":Ljava/lang/Object;, "TT;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-static {v0}, Lorg/hamcrest/core/AllOf;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object v1

    return-object v1
.end method

.method public static varargs hasItems([Lorg/hamcrest/Matcher;)Lorg/hamcrest/Matcher;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Lorg/hamcrest/Matcher<",
            "-TT;>;)",
            "Lorg/hamcrest/Matcher<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/hamcrest/Factory;
    .end annotation

    .line 94
    .local p0, "itemMatchers":[Lorg/hamcrest/Matcher;, "[Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 96
    .local v0, "all":Ljava/util/List;, "Ljava/util/List<Lorg/hamcrest/Matcher<-Ljava/lang/Iterable<TT;>;>;>;"
    move-object v1, p0

    .local v1, "arr$":[Lorg/hamcrest/Matcher;
    array-length v2, v1

    .local v2, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 98
    .local v4, "elementMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    new-instance v5, Lorg/hamcrest/core/IsCollectionContaining;

    invoke-direct {v5, v4}, Lorg/hamcrest/core/IsCollectionContaining;-><init>(Lorg/hamcrest/Matcher;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v4    # "elementMatcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<-TT;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    .end local v1    # "arr$":[Lorg/hamcrest/Matcher;
    .end local v2    # "len$":I
    .end local v3    # "i$":I
    :cond_0
    invoke-static {v0}, Lorg/hamcrest/core/AllOf;->allOf(Ljava/lang/Iterable;)Lorg/hamcrest/Matcher;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeTo(Lorg/hamcrest/Description;)V
    .locals 2
    .param p1, "description"    # Lorg/hamcrest/Description;

    .line 39
    .local p0, "this":Lorg/hamcrest/core/IsCollectionContaining;, "Lorg/hamcrest/core/IsCollectionContaining<TT;>;"
    const-string v0, "a collection containing "

    invoke-interface {p1, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    iget-object v1, p0, Lorg/hamcrest/core/IsCollectionContaining;->elementMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;

    .line 42
    return-void
.end method

.method protected matchesSafely(Ljava/lang/Iterable;Lorg/hamcrest/Description;)Z
    .locals 4
    .param p2, "mismatchDescription"    # Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "-TT;>;",
            "Lorg/hamcrest/Description;",
            ")Z"
        }
    .end annotation

    .line 23
    .local p0, "this":Lorg/hamcrest/core/IsCollectionContaining;, "Lorg/hamcrest/core/IsCollectionContaining<TT;>;"
    .local p1, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<-TT;>;"
    const/4 v0, 0x0

    .line 24
    .local v0, "isPastFirst":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 25
    .local v2, "item":Ljava/lang/Object;
    iget-object v3, p0, Lorg/hamcrest/core/IsCollectionContaining;->elementMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v3, v2}, Lorg/hamcrest/Matcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 26
    const/4 v3, 0x1

    return v3

    .line 28
    :cond_0
    if-eqz v0, :cond_1

    .line 29
    const-string v3, ", "

    invoke-interface {p2, v3}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    .line 31
    :cond_1
    iget-object v3, p0, Lorg/hamcrest/core/IsCollectionContaining;->elementMatcher:Lorg/hamcrest/Matcher;

    invoke-interface {v3, v2, p2}, Lorg/hamcrest/Matcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    .line 32
    const/4 v0, 0x1

    .end local v2    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 34
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method protected bridge synthetic matchesSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lorg/hamcrest/Description;

    .line 14
    .local p0, "this":Lorg/hamcrest/core/IsCollectionContaining;, "Lorg/hamcrest/core/IsCollectionContaining<TT;>;"
    move-object v0, p1

    check-cast v0, Ljava/lang/Iterable;

    invoke-virtual {p0, v0, p2}, Lorg/hamcrest/core/IsCollectionContaining;->matchesSafely(Ljava/lang/Iterable;Lorg/hamcrest/Description;)Z

    move-result v0

    return v0
.end method
