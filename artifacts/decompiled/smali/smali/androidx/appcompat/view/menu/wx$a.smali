.class public Landroidx/appcompat/view/menu/wx$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/wx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/wx$a$a;
    }
.end annotation


# static fields
.field public static final c:Landroidx/appcompat/view/menu/wx$a;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/bx0;

.field public final b:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/wx$a$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/wx$a$a;-><init>()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/wx$a$a;->a()Landroidx/appcompat/view/menu/wx$a;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/wx$a;->c:Landroidx/appcompat/view/menu/wx$a;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/bx0;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/wx$a;->a:Landroidx/appcompat/view/menu/bx0;

    iput-object p3, p0, Landroidx/appcompat/view/menu/wx$a;->b:Landroid/os/Looper;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/appcompat/view/menu/bx0;Landroid/accounts/Account;Landroid/os/Looper;Landroidx/appcompat/view/menu/wc1;)V
    .locals 0

    .line 2
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/view/menu/wx$a;-><init>(Landroidx/appcompat/view/menu/bx0;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
