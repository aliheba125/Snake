.class public Landroidx/appcompat/view/menu/ut0$d;
.super Landroidx/appcompat/view/menu/ut0$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ut0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final h:Landroid/graphics/RectF;


# instance fields
.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F

.field public g:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/ut0$d;->h:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    invoke-direct {p0}, Landroidx/appcompat/view/menu/ut0$f;-><init>()V

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ut0$d;->q(F)V

    invoke-virtual {p0, p2}, Landroidx/appcompat/view/menu/ut0$d;->u(F)V

    invoke-virtual {p0, p3}, Landroidx/appcompat/view/menu/ut0$d;->r(F)V

    invoke-virtual {p0, p4}, Landroidx/appcompat/view/menu/ut0$d;->p(F)V

    return-void
.end method

.method public static synthetic b(Landroidx/appcompat/view/menu/ut0$d;)F
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->k()F

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroidx/appcompat/view/menu/ut0$d;)F
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->o()F

    move-result p0

    return p0
.end method

.method public static synthetic d(Landroidx/appcompat/view/menu/ut0$d;)F
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->l()F

    move-result p0

    return p0
.end method

.method public static synthetic e(Landroidx/appcompat/view/menu/ut0$d;)F
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->j()F

    move-result p0

    return p0
.end method

.method public static synthetic f(Landroidx/appcompat/view/menu/ut0$d;F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ut0$d;->s(F)V

    return-void
.end method

.method public static synthetic g(Landroidx/appcompat/view/menu/ut0$d;F)V
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/ut0$d;->t(F)V

    return-void
.end method

.method public static synthetic h(Landroidx/appcompat/view/menu/ut0$d;)F
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->m()F

    move-result p0

    return p0
.end method

.method public static synthetic i(Landroidx/appcompat/view/menu/ut0$d;)F
    .locals 0

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->n()F

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/ut0$f;->a:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    sget-object v0, Landroidx/appcompat/view/menu/ut0$d;->h:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->k()F

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->o()F

    move-result v2

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->l()F

    move-result v3

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->j()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->m()F

    move-result v1

    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ut0$d;->n()F

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public final j()F
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ut0$d;->e:F

    return v0
.end method

.method public final k()F
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ut0$d;->b:F

    return v0
.end method

.method public final l()F
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ut0$d;->d:F

    return v0
.end method

.method public final m()F
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ut0$d;->f:F

    return v0
.end method

.method public final n()F
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ut0$d;->g:F

    return v0
.end method

.method public final o()F
    .locals 1

    iget v0, p0, Landroidx/appcompat/view/menu/ut0$d;->c:F

    return v0
.end method

.method public final p(F)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/ut0$d;->e:F

    return-void
.end method

.method public final q(F)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/ut0$d;->b:F

    return-void
.end method

.method public final r(F)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/ut0$d;->d:F

    return-void
.end method

.method public final s(F)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/ut0$d;->f:F

    return-void
.end method

.method public final t(F)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/ut0$d;->g:F

    return-void
.end method

.method public final u(F)V
    .locals 0

    iput p1, p0, Landroidx/appcompat/view/menu/ut0$d;->c:F

    return-void
.end method
