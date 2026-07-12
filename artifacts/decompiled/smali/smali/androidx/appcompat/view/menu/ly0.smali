.class public abstract Landroidx/appcompat/view/menu/ly0;
.super Landroidx/appcompat/view/menu/zg;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/dx;


# instance fields
.field public final p:I


# direct methods
.method public constructor <init>(ILandroidx/appcompat/view/menu/xg;)V
    .locals 0

    invoke-direct {p0, p2}, Landroidx/appcompat/view/menu/zg;-><init>(Landroidx/appcompat/view/menu/xg;)V

    iput p1, p0, Landroidx/appcompat/view/menu/ly0;->p:I

    return-void
.end method


# virtual methods
.method public e()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ly0;->p:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/y7;->c()Landroidx/appcompat/view/menu/xg;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/appcompat/view/menu/do0;->e(Landroidx/appcompat/view/menu/dx;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderLambdaToString(this)"

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/view/menu/y7;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
