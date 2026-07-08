.class public Landroidx/appcompat/view/menu/hq$c;
.super Landroidx/appcompat/view/menu/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/hq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:Landroidx/appcompat/view/menu/hq;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/hq;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/hq$c;->b:Landroidx/appcompat/view/menu/hq;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/q0;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)Landroidx/appcompat/view/menu/p0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/hq$c;->b:Landroidx/appcompat/view/menu/hq;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/hq;->H(I)Landroidx/appcompat/view/menu/p0;

    move-result-object p1

    invoke-static {p1}, Landroidx/appcompat/view/menu/p0;->U(Landroidx/appcompat/view/menu/p0;)Landroidx/appcompat/view/menu/p0;

    move-result-object p1

    return-object p1
.end method

.method public d(I)Landroidx/appcompat/view/menu/p0;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/view/menu/hq$c;->b:Landroidx/appcompat/view/menu/hq;

    iget p1, p1, Landroidx/appcompat/view/menu/hq;->k:I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/view/menu/hq$c;->b:Landroidx/appcompat/view/menu/hq;

    iget p1, p1, Landroidx/appcompat/view/menu/hq;->l:I

    :goto_0
    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/hq$c;->b(I)Landroidx/appcompat/view/menu/p0;

    move-result-object p1

    return-object p1
.end method

.method public f(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/hq$c;->b:Landroidx/appcompat/view/menu/hq;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/view/menu/hq;->P(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
