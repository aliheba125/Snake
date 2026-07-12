.class public Landroidx/appcompat/view/menu/b1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/b1;->c(Landroid/content/Intent;Landroid/os/IBinder;Ljava/lang/String;I)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Landroid/os/IBinder;

.field public final synthetic m:Landroidx/appcompat/view/menu/b1;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/b1;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/b1$a;->m:Landroidx/appcompat/view/menu/b1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/b1$a;->l:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/b1$a;->l:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/b1$a;->m:Landroidx/appcompat/view/menu/b1;

    invoke-static {v0}, Landroidx/appcompat/view/menu/b1;->b(Landroidx/appcompat/view/menu/b1;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/view/menu/b1$a;->l:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
