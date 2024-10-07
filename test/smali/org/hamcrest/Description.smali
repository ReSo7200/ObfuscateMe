.class public interface abstract Lorg/hamcrest/Description;
.super Ljava/lang/Object;
.source "Description.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hamcrest/Description$NullDescription;
    }
.end annotation


# static fields
.field public static final NONE:Lorg/hamcrest/Description;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lorg/hamcrest/Description$NullDescription;

    invoke-direct {v0}, Lorg/hamcrest/Description$NullDescription;-><init>()V

    sput-object v0, Lorg/hamcrest/Description;->NONE:Lorg/hamcrest/Description;

    return-void
.end method


# virtual methods
.method public abstract appendDescriptionOf(Lorg/hamcrest/SelfDescribing;)Lorg/hamcrest/Description;
.end method

.method public abstract appendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/hamcrest/SelfDescribing;",
            ">;)",
            "Lorg/hamcrest/Description;"
        }
    .end annotation
.end method

.method public abstract appendText(Ljava/lang/String;)Lorg/hamcrest/Description;
.end method

.method public abstract appendValue(Ljava/lang/Object;)Lorg/hamcrest/Description;
.end method

.method public abstract appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Lorg/hamcrest/Description;"
        }
    .end annotation
.end method

.method public varargs abstract appendValueList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lorg/hamcrest/Description;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[TT;)",
            "Lorg/hamcrest/Description;"
        }
    .end annotation
.end method
