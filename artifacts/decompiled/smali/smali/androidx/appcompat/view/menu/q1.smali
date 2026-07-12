.class public final synthetic Landroidx/appcompat/view/menu/q1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic l:Landroidx/appcompat/view/menu/r1;

.field public final synthetic m:Landroidx/appcompat/view/menu/yj0;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/r1;Landroidx/appcompat/view/menu/yj0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/q1;->l:Landroidx/appcompat/view/menu/r1;

    iput-object p2, p0, Landroidx/appcompat/view/menu/q1;->m:Landroidx/appcompat/view/menu/yj0;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    iget-object v0, p0, Landroidx/appcompat/view/menu/q1;->l:Landroidx/appcompat/view/menu/r1;

    iget-object v1, p0, Landroidx/appcompat/view/menu/q1;->m:Landroidx/appcompat/view/menu/yj0;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/r1;->a(Landroidx/appcompat/view/menu/r1;Landroidx/appcompat/view/menu/yj0;)V

    return-void
.end method
