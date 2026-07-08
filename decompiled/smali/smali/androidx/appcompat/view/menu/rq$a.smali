.class public Landroidx/appcompat/view/menu/rq$a;
.super Landroidx/appcompat/view/menu/t11;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/rq;->m0(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Landroidx/appcompat/view/menu/rq;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/rq;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/rq$a;->b:Landroidx/appcompat/view/menu/rq;

    iput-object p2, p0, Landroidx/appcompat/view/menu/rq$a;->a:Landroid/view/View;

    invoke-direct {p0}, Landroidx/appcompat/view/menu/t11;-><init>()V

    return-void
.end method


# virtual methods
.method public e(Landroidx/appcompat/view/menu/s11;)V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/rq$a;->a:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/n61;->g(Landroid/view/View;F)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/rq$a;->a:Landroid/view/View;

    invoke-static {v0}, Landroidx/appcompat/view/menu/n61;->a(Landroid/view/View;)V

    invoke-virtual {p1, p0}, Landroidx/appcompat/view/menu/s11;->S(Landroidx/appcompat/view/menu/s11$f;)Landroidx/appcompat/view/menu/s11;

    return-void
.end method
