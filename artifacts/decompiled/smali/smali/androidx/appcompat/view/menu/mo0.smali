.class public final Landroidx/appcompat/view/menu/mo0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/gh;


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/appcompat/view/menu/mo0;->a:F

    return-void
.end method

.method public static b(Landroid/graphics/RectF;)F
    .locals 1

    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;)F
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/mo0;->a:F

    invoke-static {p1}, Landroidx/appcompat/view/menu/mo0;->b(Landroid/graphics/RectF;)F

    move-result p1

    mul-float/2addr v0, p1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/appcompat/view/menu/mo0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/mo0;

    iget v1, p0, Landroidx/appcompat/view/menu/mo0;->a:F

    iget p1, p1, Landroidx/appcompat/view/menu/mo0;->a:F

    cmpl-float p1, v1, p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/mo0;->a:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
