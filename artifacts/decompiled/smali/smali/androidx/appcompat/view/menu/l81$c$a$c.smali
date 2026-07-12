.class public Landroidx/appcompat/view/menu/l81$c$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/l81$c$a;->onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic m:Landroid/view/View;

.field public final synthetic n:Landroidx/appcompat/view/menu/l81;

.field public final synthetic o:Landroidx/appcompat/view/menu/l81$a;

.field public final synthetic p:Landroid/animation/ValueAnimator;

.field public final synthetic q:Landroidx/appcompat/view/menu/l81$c$a;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/l81$c$a;Landroid/view/View;Landroidx/appcompat/view/menu/l81;Landroidx/appcompat/view/menu/l81$a;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/l81$c$a$c;->q:Landroidx/appcompat/view/menu/l81$c$a;

    iput-object p2, p0, Landroidx/appcompat/view/menu/l81$c$a$c;->m:Landroid/view/View;

    iput-object p3, p0, Landroidx/appcompat/view/menu/l81$c$a$c;->n:Landroidx/appcompat/view/menu/l81;

    iput-object p4, p0, Landroidx/appcompat/view/menu/l81$c$a$c;->o:Landroidx/appcompat/view/menu/l81$a;

    iput-object p5, p0, Landroidx/appcompat/view/menu/l81$c$a$c;->p:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$c$a$c;->m:Landroid/view/View;

    iget-object v1, p0, Landroidx/appcompat/view/menu/l81$c$a$c;->n:Landroidx/appcompat/view/menu/l81;

    iget-object v2, p0, Landroidx/appcompat/view/menu/l81$c$a$c;->o:Landroidx/appcompat/view/menu/l81$a;

    invoke-static {v0, v1, v2}, Landroidx/appcompat/view/menu/l81$c;->l(Landroid/view/View;Landroidx/appcompat/view/menu/l81;Landroidx/appcompat/view/menu/l81$a;)V

    iget-object v0, p0, Landroidx/appcompat/view/menu/l81$c$a$c;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
