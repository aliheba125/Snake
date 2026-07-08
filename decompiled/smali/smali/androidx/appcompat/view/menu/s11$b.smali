.class public Landroidx/appcompat/view/menu/s11$b;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/s11;->V(Landroid/animation/Animator;Landroidx/appcompat/view/menu/o4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/appcompat/view/menu/o4;

.field public final synthetic b:Landroidx/appcompat/view/menu/s11;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/s11;Landroidx/appcompat/view/menu/o4;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/s11$b;->b:Landroidx/appcompat/view/menu/s11;

    iput-object p2, p0, Landroidx/appcompat/view/menu/s11$b;->a:Landroidx/appcompat/view/menu/o4;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s11$b;->a:Landroidx/appcompat/view/menu/o4;

    invoke-virtual {v0, p1}, Landroidx/appcompat/view/menu/nu0;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroidx/appcompat/view/menu/s11$b;->b:Landroidx/appcompat/view/menu/s11;

    iget-object v0, v0, Landroidx/appcompat/view/menu/s11;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/s11$b;->b:Landroidx/appcompat/view/menu/s11;

    iget-object v0, v0, Landroidx/appcompat/view/menu/s11;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
