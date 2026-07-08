.class public Landroidx/appcompat/view/menu/fn$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/fn;->F()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/fn;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/fn;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/fn$a;->a:Landroidx/appcompat/view/menu/fn;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn$a;->a:Landroidx/appcompat/view/menu/fn;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/oo;->r()V

    iget-object p1, p0, Landroidx/appcompat/view/menu/fn$a;->a:Landroidx/appcompat/view/menu/fn;

    invoke-static {p1}, Landroidx/appcompat/view/menu/fn;->C(Landroidx/appcompat/view/menu/fn;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
