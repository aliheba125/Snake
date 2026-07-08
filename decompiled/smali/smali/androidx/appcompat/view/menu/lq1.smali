.class public final Landroidx/appcompat/view/menu/lq1;
.super Landroidx/appcompat/view/menu/mn1$a;
.source "SourceFile"


# instance fields
.field public final synthetic q:Landroid/app/Activity;

.field public final synthetic r:Landroidx/appcompat/view/menu/bm1;

.field public final synthetic s:Landroidx/appcompat/view/menu/mn1$b;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mn1$b;Landroid/app/Activity;Landroidx/appcompat/view/menu/bm1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/lq1;->s:Landroidx/appcompat/view/menu/mn1$b;

    iput-object p2, p0, Landroidx/appcompat/view/menu/lq1;->q:Landroid/app/Activity;

    iput-object p3, p0, Landroidx/appcompat/view/menu/lq1;->r:Landroidx/appcompat/view/menu/bm1;

    iget-object p1, p1, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/mn1$a;-><init>(Landroidx/appcompat/view/menu/mn1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Landroidx/appcompat/view/menu/lq1;->s:Landroidx/appcompat/view/menu/mn1$b;

    iget-object v0, v0, Landroidx/appcompat/view/menu/mn1$b;->a:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mn1;->d(Landroidx/appcompat/view/menu/mn1;)Landroidx/appcompat/view/menu/fm1;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/fm1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/lq1;->q:Landroid/app/Activity;

    invoke-static {v1}, Landroidx/appcompat/view/menu/vf0;->k(Ljava/lang/Object;)Landroidx/appcompat/view/menu/b20;

    move-result-object v1

    iget-object v2, p0, Landroidx/appcompat/view/menu/lq1;->r:Landroidx/appcompat/view/menu/bm1;

    iget-wide v3, p0, Landroidx/appcompat/view/menu/mn1$a;->n:J

    invoke-interface {v0, v1, v2, v3, v4}, Landroidx/appcompat/view/menu/fm1;->onActivitySaveInstanceState(Landroidx/appcompat/view/menu/b20;Landroidx/appcompat/view/menu/hm1;J)V

    return-void
.end method
