.class public abstract Landroidx/appcompat/view/menu/hb0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/animation/TimeInterpolator;

.field public final b:Landroid/view/View;

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/hb0;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Landroidx/appcompat/view/menu/zl0;->B:I

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, v2}, Landroidx/appcompat/view/menu/rh0;->a(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/zd0;->g(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/hb0;->a:Landroid/animation/TimeInterpolator;

    sget v0, Landroidx/appcompat/view/menu/zl0;->t:I

    const/16 v1, 0x12c

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/zd0;->f(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/hb0;->c:I

    sget v0, Landroidx/appcompat/view/menu/zl0;->w:I

    const/16 v1, 0x96

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/zd0;->f(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Landroidx/appcompat/view/menu/hb0;->d:I

    sget v0, Landroidx/appcompat/view/menu/zl0;->v:I

    const/16 v1, 0x64

    invoke-static {p1, v0, v1}, Landroidx/appcompat/view/menu/zd0;->f(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Landroidx/appcompat/view/menu/hb0;->e:I

    return-void
.end method
