.class public final Landroidx/appcompat/view/menu/xn1;
.super Landroidx/appcompat/view/menu/mn1$a;
.source "SourceFile"


# instance fields
.field public final synthetic q:Ljava/lang/String;

.field public final synthetic r:Ljava/lang/String;

.field public final synthetic s:Landroid/os/Bundle;

.field public final synthetic t:Landroidx/appcompat/view/menu/mn1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/mn1;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/xn1;->t:Landroidx/appcompat/view/menu/mn1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/xn1;->q:Ljava/lang/String;

    iput-object p3, p0, Landroidx/appcompat/view/menu/xn1;->r:Ljava/lang/String;

    iput-object p4, p0, Landroidx/appcompat/view/menu/xn1;->s:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Landroidx/appcompat/view/menu/mn1$a;-><init>(Landroidx/appcompat/view/menu/mn1;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/xn1;->t:Landroidx/appcompat/view/menu/mn1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/mn1;->d(Landroidx/appcompat/view/menu/mn1;)Landroidx/appcompat/view/menu/fm1;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/mj0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/view/menu/fm1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/xn1;->q:Ljava/lang/String;

    iget-object v2, p0, Landroidx/appcompat/view/menu/xn1;->r:Ljava/lang/String;

    iget-object v3, p0, Landroidx/appcompat/view/menu/xn1;->s:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2, v3}, Landroidx/appcompat/view/menu/fm1;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
