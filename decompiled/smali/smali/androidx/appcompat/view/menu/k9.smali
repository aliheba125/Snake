.class public final Landroidx/appcompat/view/menu/k9;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/appcompat/view/menu/j9;

.field public final b:Landroidx/appcompat/view/menu/j9;

.field public final c:Landroidx/appcompat/view/menu/j9;

.field public final d:Landroidx/appcompat/view/menu/j9;

.field public final e:Landroidx/appcompat/view/menu/j9;

.field public final f:Landroidx/appcompat/view/menu/j9;

.field public final g:Landroidx/appcompat/view/menu/j9;

.field public final h:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Landroidx/appcompat/view/menu/zl0;->p:I

    const-class v1, Lcom/google/android/material/datepicker/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/gb0;->d(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    sget-object v1, Landroidx/appcompat/view/menu/ln0;->t2:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroidx/appcompat/view/menu/ln0;->x2:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/j9;->a(Landroid/content/Context;I)Landroidx/appcompat/view/menu/j9;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/k9;->a:Landroidx/appcompat/view/menu/j9;

    sget v1, Landroidx/appcompat/view/menu/ln0;->v2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/j9;->a(Landroid/content/Context;I)Landroidx/appcompat/view/menu/j9;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/k9;->g:Landroidx/appcompat/view/menu/j9;

    sget v1, Landroidx/appcompat/view/menu/ln0;->w2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/j9;->a(Landroid/content/Context;I)Landroidx/appcompat/view/menu/j9;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/k9;->b:Landroidx/appcompat/view/menu/j9;

    sget v1, Landroidx/appcompat/view/menu/ln0;->y2:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/j9;->a(Landroid/content/Context;I)Landroidx/appcompat/view/menu/j9;

    move-result-object v1

    iput-object v1, p0, Landroidx/appcompat/view/menu/k9;->c:Landroidx/appcompat/view/menu/j9;

    sget v1, Landroidx/appcompat/view/menu/ln0;->z2:I

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/nb0;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    sget v3, Landroidx/appcompat/view/menu/ln0;->B2:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/appcompat/view/menu/j9;->a(Landroid/content/Context;I)Landroidx/appcompat/view/menu/j9;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/view/menu/k9;->d:Landroidx/appcompat/view/menu/j9;

    sget v3, Landroidx/appcompat/view/menu/ln0;->A2:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-static {p1, v3}, Landroidx/appcompat/view/menu/j9;->a(Landroid/content/Context;I)Landroidx/appcompat/view/menu/j9;

    move-result-object v3

    iput-object v3, p0, Landroidx/appcompat/view/menu/k9;->e:Landroidx/appcompat/view/menu/j9;

    sget v3, Landroidx/appcompat/view/menu/ln0;->C2:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/appcompat/view/menu/j9;->a(Landroid/content/Context;I)Landroidx/appcompat/view/menu/j9;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/view/menu/k9;->f:Landroidx/appcompat/view/menu/j9;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/k9;->h:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
