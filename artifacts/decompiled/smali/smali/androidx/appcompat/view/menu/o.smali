.class public abstract Landroidx/appcompat/view/menu/o;
.super Landroidx/appcompat/view/menu/qn0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/qn0;-><init>()V

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/o;->c()Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    return v0
.end method

.method public abstract c()Ljava/util/Random;
.end method
