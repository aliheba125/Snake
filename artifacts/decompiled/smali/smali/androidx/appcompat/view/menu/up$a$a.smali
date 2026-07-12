.class public final Landroidx/appcompat/view/menu/up$a$a;
.super Landroidx/appcompat/view/menu/g80;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/fw;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/view/menu/up$a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final n:Landroidx/appcompat/view/menu/up$a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/up$a$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/up$a$a;-><init>()V

    sput-object v0, Landroidx/appcompat/view/menu/up$a$a;->n:Landroidx/appcompat/view/menu/up$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/appcompat/view/menu/g80;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/appcompat/view/menu/kh$b;)Landroidx/appcompat/view/menu/up;
    .locals 1

    instance-of v0, p1, Landroidx/appcompat/view/menu/up;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/appcompat/view/menu/up;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroidx/appcompat/view/menu/kh$b;

    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/up$a$a;->a(Landroidx/appcompat/view/menu/kh$b;)Landroidx/appcompat/view/menu/up;

    move-result-object p1

    return-object p1
.end method
