.class public final Landroidx/appcompat/view/menu/rb1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic m:Landroidx/appcompat/view/menu/sb1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/sb1;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/rb1;->m:Landroidx/appcompat/view/menu/sb1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Landroidx/appcompat/view/menu/rb1;->m:Landroidx/appcompat/view/menu/sb1;

    iget-object v0, v0, Landroidx/appcompat/view/menu/sb1;->a:Landroidx/appcompat/view/menu/tb1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/tb1;->t(Landroidx/appcompat/view/menu/tb1;)Landroidx/appcompat/view/menu/m2$f;

    move-result-object v1

    invoke-static {v0}, Landroidx/appcompat/view/menu/tb1;->t(Landroidx/appcompat/view/menu/tb1;)Landroidx/appcompat/view/menu/m2$f;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, " disconnecting because it was signed out."

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/appcompat/view/menu/m2$f;->c(Ljava/lang/String;)V

    return-void
.end method
