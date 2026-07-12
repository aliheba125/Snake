.class public final Landroidx/appcompat/view/menu/bd0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/view/menu/bd0$a;
    }
.end annotation


# static fields
.field public static final b:Landroidx/appcompat/view/menu/bd0;


# instance fields
.field public final a:Landroidx/appcompat/view/menu/ad0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/bd0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bd0$a;-><init>()V

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/bd0$a;->a()Landroidx/appcompat/view/menu/bd0;

    move-result-object v0

    sput-object v0, Landroidx/appcompat/view/menu/bd0;->b:Landroidx/appcompat/view/menu/bd0;

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/view/menu/ad0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/view/menu/bd0;->a:Landroidx/appcompat/view/menu/ad0;

    return-void
.end method

.method public static b()Landroidx/appcompat/view/menu/bd0$a;
    .locals 1

    new-instance v0, Landroidx/appcompat/view/menu/bd0$a;

    invoke-direct {v0}, Landroidx/appcompat/view/menu/bd0$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Landroidx/appcompat/view/menu/ad0;
    .locals 1

    iget-object v0, p0, Landroidx/appcompat/view/menu/bd0;->a:Landroidx/appcompat/view/menu/ad0;

    return-object v0
.end method

.method public c()[B
    .locals 1

    invoke-static {p0}, Landroidx/appcompat/view/menu/uk0;->a(Ljava/lang/Object;)[B

    move-result-object v0

    return-object v0
.end method
