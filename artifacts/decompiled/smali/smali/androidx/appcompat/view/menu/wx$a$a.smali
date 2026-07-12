.class public Landroidx/appcompat/view/menu/wx$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/wx$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Landroidx/appcompat/view/menu/bx0;

.field public b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/wx$a;
    .locals 4

    iget-object v0, p0, Landroidx/appcompat/view/menu/wx$a$a;->a:Landroidx/appcompat/view/menu/bx0;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/appcompat/view/menu/p2;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/p2;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/view/menu/wx$a$a;->a:Landroidx/appcompat/view/menu/bx0;

    :cond_0
    iget-object v0, p0, Landroidx/appcompat/view/menu/wx$a$a;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/view/menu/wx$a$a;->b:Landroid/os/Looper;

    :cond_1
    new-instance v0, Landroidx/appcompat/view/menu/wx$a;

    iget-object v1, p0, Landroidx/appcompat/view/menu/wx$a$a;->a:Landroidx/appcompat/view/menu/bx0;

    iget-object v2, p0, Landroidx/appcompat/view/menu/wx$a$a;->b:Landroid/os/Looper;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Landroidx/appcompat/view/menu/wx$a;-><init>(Landroidx/appcompat/view/menu/bx0;Landroid/accounts/Account;Landroid/os/Looper;Landroidx/appcompat/view/menu/wc1;)V

    return-object v0
.end method
