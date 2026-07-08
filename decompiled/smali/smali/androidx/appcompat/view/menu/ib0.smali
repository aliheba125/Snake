.class public Landroidx/appcompat/view/menu/ib0;
.super Landroidx/appcompat/view/menu/hb0;
.source "SourceFile"


# instance fields
.field public final f:F

.field public final g:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/hb0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/appcompat/view/menu/em0;->f:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/ib0;->f:F

    sget v0, Landroidx/appcompat/view/menu/em0;->g:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/ib0;->g:F

    return-void
.end method
