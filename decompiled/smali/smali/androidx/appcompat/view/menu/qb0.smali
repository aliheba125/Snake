.class public Landroidx/appcompat/view/menu/qb0;
.super Landroidx/appcompat/view/menu/hb0;
.source "SourceFile"


# instance fields
.field public final f:F

.field public final g:F

.field public final h:F


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/hb0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroidx/appcompat/view/menu/em0;->i:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/qb0;->f:F

    sget v0, Landroidx/appcompat/view/menu/em0;->h:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/qb0;->g:F

    sget v0, Landroidx/appcompat/view/menu/em0;->j:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/qb0;->h:F

    return-void
.end method
