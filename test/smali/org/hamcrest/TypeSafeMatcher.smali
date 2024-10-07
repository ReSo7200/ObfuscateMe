.class public abstract Lorg/hamcrest/TypeSafeMatcher;
.super Lorg/hamcrest/BaseMatcher;
.source "TypeSafeMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/hamcrest/BaseMatcher<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TYPE_FINDER:Lorg/hamcrest/internal/ReflectiveTypeFinder;


# instance fields
.field private final expectedType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lorg/hamcrest/internal/ReflectiveTypeFinder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "matchesSafely"

    invoke-direct {v0, v3, v1, v2}, Lorg/hamcrest/internal/ReflectiveTypeFinder;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/hamcrest/TypeSafeMatcher;->TYPE_FINDER:Lorg/hamcrest/internal/ReflectiveTypeFinder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 22
    .local p0, "this":Lorg/hamcrest/TypeSafeMatcher;, "Lorg/hamcrest/TypeSafeMatcher<TT;>;"
    sget-object v0, Lorg/hamcrest/TypeSafeMatcher;->TYPE_FINDER:Lorg/hamcrest/internal/ReflectiveTypeFinder;

    invoke-direct {p0, v0}, Lorg/hamcrest/TypeSafeMatcher;-><init>(Lorg/hamcrest/internal/ReflectiveTypeFinder;)V

    .line 23
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lorg/hamcrest/TypeSafeMatcher;, "Lorg/hamcrest/TypeSafeMatcher<TT;>;"
    .local p1, "expectedType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/hamcrest/TypeSafeMatcher;->expectedType:Ljava/lang/Class;

    .line 32
    return-void
.end method

.method protected constructor <init>(Lorg/hamcrest/internal/ReflectiveTypeFinder;)V
    .locals 1
    .param p1, "typeFinder"    # Lorg/hamcrest/internal/ReflectiveTypeFinder;

    .line 39
    .local p0, "this":Lorg/hamcrest/TypeSafeMatcher;, "Lorg/hamcrest/TypeSafeMatcher<TT;>;"
    invoke-direct {p0}, Lorg/hamcrest/BaseMatcher;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/hamcrest/internal/ReflectiveTypeFinder;->findExpectedType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lorg/hamcrest/TypeSafeMatcher;->expectedType:Ljava/lang/Class;

    .line 41
    return-void
.end method


# virtual methods
.method public final describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 2
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "description"    # Lorg/hamcrest/Description;

    .line 73
    .local p0, "this":Lorg/hamcrest/TypeSafeMatcher;, "Lorg/hamcrest/TypeSafeMatcher<TT;>;"
    if-nez p1, :cond_0

    .line 74
    invoke-super {p0, p1, p2}, Lorg/hamcrest/BaseMatcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lorg/hamcrest/TypeSafeMatcher;->expectedType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 76
    const-string/jumbo v0, "was a "

    invoke-interface {p2, v0}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    const-string v1, " ("

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/hamcrest/Description;->appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;

    move-result-object v0

    const-string v1, ")"

    invoke-interface {v0, v1}, Lorg/hamcrest/Description;->appendText(Ljava/lang/String;)Lorg/hamcrest/Description;

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/hamcrest/TypeSafeMatcher;->describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    .line 84
    :goto_0
    return-void
.end method

.method protected describeMismatchSafely(Ljava/lang/Object;Lorg/hamcrest/Description;)V
    .locals 0
    .param p2, "mismatchDescription"    # Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/hamcrest/Description;",
            ")V"
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/hamcrest/TypeSafeMatcher;, "Lorg/hamcrest/TypeSafeMatcher<TT;>;"
    .local p1, "item":Ljava/lang/Object;, "TT;"
    invoke-super {p0, p1, p2}, Lorg/hamcrest/BaseMatcher;->describeMismatch(Ljava/lang/Object;Lorg/hamcrest/Description;)V

    .line 55
    return-void
.end method

.method public final matches(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;

    .line 65
    .local p0, "this":Lorg/hamcrest/TypeSafeMatcher;, "Lorg/hamcrest/TypeSafeMatcher<TT;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/hamcrest/TypeSafeMatcher;->expectedType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/hamcrest/TypeSafeMatcher;->matchesSafely(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected abstract matchesSafely(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
