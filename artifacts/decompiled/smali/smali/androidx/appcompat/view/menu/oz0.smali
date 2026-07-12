.class public Landroidx/appcompat/view/menu/oz0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/m2$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/oz0$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/appcompat/view/menu/oz0;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroidx/appcompat/view/menu/oz0;->a()Landroidx/appcompat/view/menu/oz0$a;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/oz0$a;->a()Landroidx/appcompat/view/menu/oz0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/oz0;->b:Landroidx/appcompat/view/menu/oz0;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/appcompat/view/menu/fb1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/oz0;->a:Ljava/lang/String;

    return-void
.end method

.method public static a()Landroidx/appcompat/view/menu/oz0$a;
    .locals 2

    new-instance v0, Landroidx/appcompat/view/menu/oz0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/appcompat/view/menu/oz0$a;-><init>(Landroidx/appcompat/view/menu/db1;)V

    return-object v0
.end method


# virtual methods
.method public final b()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Landroidx/appcompat/view/menu/oz0;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "api"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Landroidx/appcompat/view/menu/oz0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Landroidx/appcompat/view/menu/oz0;

    iget-object v0, p0, Landroidx/appcompat/view/menu/oz0;->a:Ljava/lang/String;

    iget-object p1, p1, Landroidx/appcompat/view/menu/oz0;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroidx/appcompat/view/menu/wf0;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/oz0;->a:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/appcompat/view/menu/wf0;->b([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
