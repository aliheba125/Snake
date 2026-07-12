.class public Landroidx/appcompat/view/menu/y2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/ep0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/y2;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:[I

.field public final d:[I

.field public final e:[I

.field public final f:[I


# direct methods
.method public constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroidx/appcompat/view/menu/jm0;->R:I

    sget v1, Landroidx/appcompat/view/menu/jm0;->P:I

    sget v2, Landroidx/appcompat/view/menu/jm0;->a:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y2$a;->a:[I

    const/4 v0, 0x7

    new-array v1, v0, [I

    sget v2, Landroidx/appcompat/view/menu/jm0;->o:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Landroidx/appcompat/view/menu/jm0;->B:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Landroidx/appcompat/view/menu/jm0;->t:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Landroidx/appcompat/view/menu/jm0;->p:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Landroidx/appcompat/view/menu/jm0;->q:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Landroidx/appcompat/view/menu/jm0;->s:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sget v2, Landroidx/appcompat/view/menu/jm0;->r:I

    const/4 v9, 0x6

    aput v2, v1, v9

    iput-object v1, p0, Landroidx/appcompat/view/menu/y2$a;->b:[I

    new-array v0, v0, [I

    sget v1, Landroidx/appcompat/view/menu/jm0;->O:I

    aput v1, v0, v3

    sget v1, Landroidx/appcompat/view/menu/jm0;->Q:I

    aput v1, v0, v4

    sget v1, Landroidx/appcompat/view/menu/jm0;->k:I

    aput v1, v0, v5

    sget v1, Landroidx/appcompat/view/menu/jm0;->K:I

    aput v1, v0, v6

    sget v1, Landroidx/appcompat/view/menu/jm0;->L:I

    aput v1, v0, v7

    sget v1, Landroidx/appcompat/view/menu/jm0;->M:I

    aput v1, v0, v8

    sget v1, Landroidx/appcompat/view/menu/jm0;->N:I

    aput v1, v0, v9

    iput-object v0, p0, Landroidx/appcompat/view/menu/y2$a;->c:[I

    sget v0, Landroidx/appcompat/view/menu/jm0;->w:I

    sget v1, Landroidx/appcompat/view/menu/jm0;->i:I

    sget v2, Landroidx/appcompat/view/menu/jm0;->v:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y2$a;->d:[I

    sget v0, Landroidx/appcompat/view/menu/jm0;->J:I

    sget v1, Landroidx/appcompat/view/menu/jm0;->S:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y2$a;->e:[I

    sget v0, Landroidx/appcompat/view/menu/jm0;->c:I

    sget v1, Landroidx/appcompat/view/menu/jm0;->g:I

    sget v2, Landroidx/appcompat/view/menu/jm0;->d:I

    sget v3, Landroidx/appcompat/view/menu/jm0;->h:I

    filled-new-array {v0, v1, v2, v3}, [I

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/y2$a;->f:[I

    return-void
.end method


# virtual methods
.method public a(Landroidx/appcompat/view/menu/ep0;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    sget v0, Landroidx/appcompat/view/menu/jm0;->j:I

    if-ne p3, v0, :cond_0

    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    sget v1, Landroidx/appcompat/view/menu/jm0;->i:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/view/menu/ep0;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Landroidx/appcompat/view/menu/jm0;->k:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/view/menu/ep0;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    invoke-direct {p3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    return-object p3

    :cond_0
    sget v0, Landroidx/appcompat/view/menu/jm0;->y:I

    if-ne p3, v0, :cond_1

    sget p3, Landroidx/appcompat/view/menu/fm0;->c:I

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/y2$a;->l(Landroidx/appcompat/view/menu/ep0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    return-object p1

    :cond_1
    sget v0, Landroidx/appcompat/view/menu/jm0;->x:I

    if-ne p3, v0, :cond_2

    sget p3, Landroidx/appcompat/view/menu/fm0;->d:I

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/y2$a;->l(Landroidx/appcompat/view/menu/ep0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    return-object p1

    :cond_2
    sget v0, Landroidx/appcompat/view/menu/jm0;->z:I

    if-ne p3, v0, :cond_3

    sget p3, Landroidx/appcompat/view/menu/fm0;->e:I

    invoke-virtual {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/y2$a;->l(Landroidx/appcompat/view/menu/ep0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 7

    invoke-static {}, Landroidx/appcompat/view/menu/y2;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/y2$a;->a:[I

    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/view/menu/y2$a;->f([II)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v1, :cond_0

    sget p2, Landroidx/appcompat/view/menu/am0;->l:I

    :goto_0
    move-object v1, v0

    move v5, v2

    :goto_1
    move v0, v4

    goto :goto_3

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/view/menu/y2$a;->c:[I

    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/view/menu/y2$a;->f([II)Z

    move-result v1

    if-eqz v1, :cond_1

    sget p2, Landroidx/appcompat/view/menu/am0;->j:I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroidx/appcompat/view/menu/y2$a;->d:[I

    invoke-virtual {p0, v1, p2}, Landroidx/appcompat/view/menu/y2$a;->f([II)Z

    move-result v1

    const v5, 0x1010031

    if-eqz v1, :cond_2

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    :goto_2
    move-object v1, v0

    move v0, v4

    move p2, v5

    move v5, v2

    goto :goto_3

    :cond_2
    sget v1, Landroidx/appcompat/view/menu/jm0;->u:I

    if-ne p2, v1, :cond_3

    const p2, 0x42233333    # 40.8f

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const v1, 0x1010030

    move v5, v2

    move-object v6, v0

    move v0, p2

    move p2, v1

    move-object v1, v6

    goto :goto_3

    :cond_3
    sget v1, Landroidx/appcompat/view/menu/jm0;->l:I

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, v0

    move p2, v3

    move v5, p2

    goto :goto_1

    :goto_3
    if-eqz v5, :cond_6

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/y2;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eq v0, v4, :cond_5

    invoke-virtual {p3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_5
    return v2

    :cond_6
    return v3
.end method

.method public c(I)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/jm0;->H:I

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/jm0;->m:I

    if-ne p2, v0, :cond_0

    sget p2, Landroidx/appcompat/view/menu/cm0;->c:I

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/i3;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_0
    sget v0, Landroidx/appcompat/view/menu/jm0;->I:I

    if-ne p2, v0, :cond_1

    sget p2, Landroidx/appcompat/view/menu/cm0;->f:I

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/i3;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_1
    sget v0, Landroidx/appcompat/view/menu/jm0;->H:I

    if-ne p2, v0, :cond_2

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y2$a;->k(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_2
    sget v0, Landroidx/appcompat/view/menu/jm0;->f:I

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y2$a;->j(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_3
    sget v0, Landroidx/appcompat/view/menu/jm0;->b:I

    if-ne p2, v0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y2$a;->g(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_4
    sget v0, Landroidx/appcompat/view/menu/jm0;->e:I

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/y2$a;->i(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_5
    sget v0, Landroidx/appcompat/view/menu/jm0;->D:I

    if-eq p2, v0, :cond_b

    sget v0, Landroidx/appcompat/view/menu/jm0;->E:I

    if-ne p2, v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroidx/appcompat/view/menu/y2$a;->b:[I

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/y2$a;->f([II)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p2, Landroidx/appcompat/view/menu/am0;->l:I

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/g01;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_7
    iget-object v0, p0, Landroidx/appcompat/view/menu/y2$a;->e:[I

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/y2$a;->f([II)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p2, Landroidx/appcompat/view/menu/cm0;->b:I

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/i3;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_8
    iget-object v0, p0, Landroidx/appcompat/view/menu/y2$a;->f:[I

    invoke-virtual {p0, v0, p2}, Landroidx/appcompat/view/menu/y2$a;->f([II)Z

    move-result v0

    if-eqz v0, :cond_9

    sget p2, Landroidx/appcompat/view/menu/cm0;->a:I

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/i3;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_9
    sget v0, Landroidx/appcompat/view/menu/jm0;->A:I

    if-ne p2, v0, :cond_a

    sget p2, Landroidx/appcompat/view/menu/cm0;->d:I

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/i3;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1

    :cond_b
    :goto_0
    sget p2, Landroidx/appcompat/view/menu/cm0;->e:I

    invoke-static {p1, p2}, Landroidx/appcompat/view/menu/i3;->a(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/content/Context;ILandroid/graphics/drawable/Drawable;)Z
    .locals 5

    sget v0, Landroidx/appcompat/view/menu/jm0;->C:I

    const/4 v1, 0x1

    const v2, 0x102000d

    const v3, 0x102000f

    const/high16 v4, 0x1020000

    if-ne p2, v0, :cond_0

    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Landroidx/appcompat/view/menu/am0;->l:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/y2;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    invoke-virtual {p0, p2, v0, v4}, Landroidx/appcompat/view/menu/y2$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Landroidx/appcompat/view/menu/am0;->l:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/y2;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-virtual {p0, p2, v0, v3}, Landroidx/appcompat/view/menu/y2$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Landroidx/appcompat/view/menu/am0;->j:I

    invoke-static {p1, p3}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {}, Landroidx/appcompat/view/menu/y2;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Landroidx/appcompat/view/menu/y2$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v1

    :cond_0
    sget v0, Landroidx/appcompat/view/menu/jm0;->y:I

    if-eq p2, v0, :cond_2

    sget v0, Landroidx/appcompat/view/menu/jm0;->x:I

    if-eq p2, v0, :cond_2

    sget v0, Landroidx/appcompat/view/menu/jm0;->z:I

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    check-cast p3, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {p3, v4}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Landroidx/appcompat/view/menu/am0;->l:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/g01;->b(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/y2;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    invoke-virtual {p0, p2, v0, v4}, Landroidx/appcompat/view/menu/y2$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget v0, Landroidx/appcompat/view/menu/am0;->j:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-static {}, Landroidx/appcompat/view/menu/y2;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    invoke-virtual {p0, p2, v0, v3}, Landroidx/appcompat/view/menu/y2$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    sget p3, Landroidx/appcompat/view/menu/am0;->j:I

    invoke-static {p1, p3}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result p1

    invoke-static {}, Landroidx/appcompat/view/menu/y2;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    invoke-virtual {p0, p2, p1, p3}, Landroidx/appcompat/view/menu/y2$a;->m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V

    return v1
.end method

.method public final f([II)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-ne v3, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final g(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/y2$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public final h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, Landroidx/appcompat/view/menu/am0;->k:I

    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result v2

    sget v3, Landroidx/appcompat/view/menu/am0;->i:I

    invoke-static {p1, v3}, Landroidx/appcompat/view/menu/g01;->b(Landroid/content/Context;I)I

    move-result p1

    sget-object v3, Landroidx/appcompat/view/menu/g01;->b:[I

    const/4 v4, 0x0

    aput-object v3, v1, v4

    aput p1, v0, v4

    sget-object p1, Landroidx/appcompat/view/menu/g01;->e:[I

    const/4 v3, 0x1

    aput-object p1, v1, v3

    invoke-static {v2, p2}, Landroidx/appcompat/view/menu/cd;->g(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Landroidx/appcompat/view/menu/g01;->c:[I

    const/4 v3, 0x2

    aput-object p1, v1, v3

    invoke-static {v2, p2}, Landroidx/appcompat/view/menu/cd;->g(II)I

    move-result p1

    aput p1, v0, v3

    sget-object p1, Landroidx/appcompat/view/menu/g01;->i:[I

    const/4 v2, 0x3

    aput-object p1, v1, v2

    aput p2, v0, v2

    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public final i(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/am0;->h:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/y2$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public final j(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 1

    sget v0, Landroidx/appcompat/view/menu/am0;->i:I

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/view/menu/y2$a;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public final k(Landroid/content/Context;)Landroid/content/res/ColorStateList;
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [[I

    new-array v0, v0, [I

    sget v2, Landroidx/appcompat/view/menu/am0;->m:I

    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/g01;->e(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v6

    if-eqz v6, :cond_0

    sget-object v6, Landroidx/appcompat/view/menu/g01;->b:[I

    aput-object v6, v1, v5

    invoke-virtual {v2, v6, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    aput v6, v0, v5

    sget-object v5, Landroidx/appcompat/view/menu/g01;->f:[I

    aput-object v5, v1, v4

    sget v5, Landroidx/appcompat/view/menu/am0;->j:I

    invoke-static {p1, v5}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v4

    sget-object p1, Landroidx/appcompat/view/menu/g01;->i:[I

    aput-object p1, v1, v3

    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    aput p1, v0, v3

    goto :goto_0

    :cond_0
    sget-object v2, Landroidx/appcompat/view/menu/g01;->b:[I

    aput-object v2, v1, v5

    sget v2, Landroidx/appcompat/view/menu/am0;->m:I

    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/g01;->b(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v5

    sget-object v2, Landroidx/appcompat/view/menu/g01;->f:[I

    aput-object v2, v1, v4

    sget v2, Landroidx/appcompat/view/menu/am0;->j:I

    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v4

    sget-object v2, Landroidx/appcompat/view/menu/g01;->i:[I

    aput-object v2, v1, v3

    sget v2, Landroidx/appcompat/view/menu/am0;->m:I

    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/g01;->c(Landroid/content/Context;I)I

    move-result p1

    aput p1, v0, v3

    :goto_0
    new-instance p1, Landroid/content/res/ColorStateList;

    invoke-direct {p1, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p1
.end method

.method public final l(Landroidx/appcompat/view/menu/ep0;Landroid/content/Context;I)Landroid/graphics/drawable/LayerDrawable;
    .locals 4

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sget v0, Landroidx/appcompat/view/menu/jm0;->F:I

    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/view/menu/ep0;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Landroidx/appcompat/view/menu/jm0;->G:I

    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/view/menu/ep0;->i(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, v0, Landroid/graphics/drawable/BitmapDrawable;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    if-ne p2, p3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    if-ne p2, p3, :cond_0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, p2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v1, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object p2, v2

    :goto_0
    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {p2, v2}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    instance-of v2, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v2, p3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-ne v2, p3, :cond_1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    goto :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v1, v1, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :goto_1
    new-instance p3, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x3

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    aput-object v0, v2, v1

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p2, v2, p1

    invoke-direct {p3, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, 0x1020000

    invoke-virtual {p3, v1, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p2, 0x102000f

    invoke-virtual {p3, v0, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    const p2, 0x102000d

    invoke-virtual {p3, p1, p2}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    return-object p3
.end method

.method public final m(Landroid/graphics/drawable/Drawable;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p3, :cond_0

    invoke-static {}, Landroidx/appcompat/view/menu/y2;->a()Landroid/graphics/PorterDuff$Mode;

    move-result-object p3

    :cond_0
    invoke-static {p2, p3}, Landroidx/appcompat/view/menu/y2;->d(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method
