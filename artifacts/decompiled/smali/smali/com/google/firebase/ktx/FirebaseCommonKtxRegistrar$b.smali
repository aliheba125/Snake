.class public final Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/menu/de;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar;->getComponents()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;

    invoke-direct {v0}, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;-><init>()V

    sput-object v0, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;->a:Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroidx/appcompat/view/menu/xd;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/firebase/ktx/FirebaseCommonKtxRegistrar$b;->b(Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/nh;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroidx/appcompat/view/menu/xd;)Landroidx/appcompat/view/menu/nh;
    .locals 2

    const-class v0, Landroidx/appcompat/view/menu/c90;

    const-class v1, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Landroidx/appcompat/view/menu/ul0;->a(Ljava/lang/Class;Ljava/lang/Class;)Landroidx/appcompat/view/menu/ul0;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/appcompat/view/menu/xd;->e(Landroidx/appcompat/view/menu/ul0;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "c.get(Qualified.qualifie\u2026a, Executor::class.java))"

    invoke-static {p1, v0}, Landroidx/appcompat/view/menu/z50;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-static {p1}, Landroidx/appcompat/view/menu/xp;->a(Ljava/util/concurrent/Executor;)Landroidx/appcompat/view/menu/nh;

    move-result-object p1

    return-object p1
.end method
