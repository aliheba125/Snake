.class public Landroidx/appcompat/view/menu/kv0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/kv0;->c()Landroid/os/IInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic l:Landroidx/appcompat/view/menu/kv0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/kv0;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/view/menu/kv0$a;->l:Landroidx/appcompat/view/menu/kv0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/kv0$a;->l:Landroidx/appcompat/view/menu/kv0;

    invoke-static {v0}, Landroidx/appcompat/view/menu/kv0;->a(Landroidx/appcompat/view/menu/kv0;)Landroid/os/IInterface;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Landroidx/appcompat/view/menu/kv0$a;->l:Landroidx/appcompat/view/menu/kv0;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/kv0;->b(Landroidx/appcompat/view/menu/kv0;Landroid/os/IInterface;)V

    return-void
.end method
